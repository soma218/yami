<?php
/**
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

require_once JPATH_SITE.'/components/com_content/router.php';

/**
 * Content Search plugin
 *
 * @package		Joomla.Plugin
 * @subpackage	Search.content
 * @since		1.6
 */
class plgSearchContent extends JPlugin
{
	/**
	 * @return array An array of search areas
	 */
	function onContentSearchAreas()
	{
		static $areas = array(
			'content' => 'JGLOBAL_ARTICLES'
			);
			return $areas;
	}

	/**
	 * Content Search method
	 * The sql must return the following fields that are used in a common display
	 * routine: href, title, section, created, text, browsernav
	 * @param string Target search string
	 * @param string mathcing option, exact|any|all
	 * @param string ordering option, newest|oldest|popular|alpha|category
	 * @param mixed An array if the search it to be restricted to areas, null if search all
	 */
	function onContentSearch($text, $phrase='', $ordering='', $areas=null)
	{
		$db		= JFactory::getDbo();
		$app	= JFactory::getApplication();
		$user	= JFactory::getUser();
		$groups	= implode(',', $user->getAuthorisedViewLevels());
		$tag = JFactory::getLanguage()->getTag();

		require_once JPATH_SITE . '/components/com_content/helpers/route.php';
		require_once JPATH_ADMINISTRATOR . '/components/com_search/helpers/search.php';
		
		// 根据标签精准条件搜索
		$listTag = JRequest::getVar('tags');
		$tagWhere ='';
		if(isset($listTag)){
			$listTag =(is_array($listTag))?implode(',',$listTag):$listTag;
			$tagWhere = 'cat.category_id in ('.$listTag.') and '; 
		}
		
		$searchText = $text;
		if (is_array($areas)) {
			if (!array_intersect($areas, array_keys($this->onContentSearchAreas()))) {
				return array();
			}
		}

		$sContent		= $this->params->get('search_content',		1);
		// $limit			= $this->params->def('search_limit',		20);
		$limit			= 1;

		$nullDate		= $db->getNullDate();
		$date = JFactory::getDate();
		$now = $date->toSql();

		$text = trim($text);
		if ($text == '') {
			return array();
		}

		$wheres = array();
		switch ($phrase) {
			case 'exact':
				$text		= $db->Quote('%'.$db->escape($text, true).'%', false);
				$wheres2	= array();
				$wheres2[]	= 'a.title LIKE '.$text;
				$wheres2[]	= 'a.introtext LIKE '.$text;
				$wheres2[]	= 'a.fulltext LIKE '.$text;
				$wheres2[]	= 'a.metakey LIKE '.$text;
				$wheres2[]	= 'a.metadesc LIKE '.$text;
				$where		= '(' . implode(') OR (', $wheres2) . ')';
				break;

			case 'all':
			case 'any':
			default:
				$words = explode(' ', $text);
				$wheres = array();
				foreach ($words as $word) {
					$word		= $db->Quote('%'.$db->escape($word, true).'%', false);
					$wheres2	= array();
					$wheres2[]	= 'a.title LIKE '.$word;
					$wheres2[]	= 'a.introtext LIKE '.$word;
					$wheres2[]	= 'a.fulltext LIKE '.$word;
					$wheres2[]	= 'a.metakey LIKE '.$word;
					$wheres2[]	= 'a.metadesc LIKE '.$word;
					$wheres[]	= implode(' OR ', $wheres2);
				}
				$where = '(' . implode(($phrase == 'all' ? ') AND (' : ') OR ('), $wheres) . ')';
				break;
		}

		$morder = '';
		switch ($ordering) {
			case 'last':
				$order = 'a.created DESC';
				$morder ='pr.product_date_added DESC';
				break;

			case 'popular':
				$order = 'a.hits DESC';
				$morder = 'pr.hits DESC';
				break;

			case 'lastWeek':
				$order = 'a.title ASC';
				$morder = 'pr.hits DESC';
				break;

			case 'lastMouth':
				$order = 'c.title ASC, a.title ASC';
				$morder = 'a.title ASC';
				break;

			case 'lastQuarter':
			default:
				$order = 'a.created DESC';
				$morder = 'pr.hits DESC';
				break;
		}

		$rows = array();
		$query	= $db->getQuery(true);

		// search articles
		if ($sContent && $limit > 0)
		{
			$query->clear();
			//sqlsrv changes
			$case_when = ' CASE WHEN ';
			$case_when .= $query->charLength('a.alias');
			$case_when .= ' THEN ';
			$a_id = $query->castAsChar('a.id');
			$case_when .= $query->concatenate(array($a_id, 'a.alias'), ':');
			$case_when .= ' ELSE ';
			$case_when .= $a_id.' END as slug';

			$case_when1 = ' CASE WHEN ';
			$case_when1 .= $query->charLength('c.alias');
			$case_when1 .= ' THEN ';
			$c_id = $query->castAsChar('c.id');
			$case_when1 .= $query->concatenate(array($c_id, 'c.alias'), ':');
			$case_when1 .= ' ELSE ';
			$case_when1 .= $c_id.' END as catslug';

			$query->select('a.images as images, a.title AS title, a.metadesc, a.metakey, a.created AS created');
			$query->select($query->concatenate(array('a.introtext', 'a.fulltext')).' AS text');
			$query->select('c.title AS section, '.$case_when.','.$case_when1.', '.'\'2\' AS browsernav');

			$query->from('#__content AS a');
			$query->innerJoin('#__categories AS c ON c.id=a.catid');
			$query->where('('. $where .')' . 'AND a.state=1 AND c.published = 1 AND a.access IN ('.$groups.') '
						.'AND c.access IN ('.$groups.') '
						.'AND (a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).') '
						.'AND (a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).')' );
			$query->group('a.id, a.title, a.metadesc, a.metakey, a.created, a.introtext, a.fulltext, c.title, a.alias, c.alias, c.id');
			$query->order($order);

			// Filter by language
			if ($app->isSite() && $app->getLanguageFilter()) {
				$query->where('a.language in (' . $db->Quote($tag) . ',' . $db->Quote('*') . ')');
				$query->where('c.language in (' . $db->Quote($tag) . ',' . $db->Quote('*') . ')');
			}

			$db->setQuery($query, 0, $limit);
			$list = $db->loadObjectList();
			$limit -= count($list);
			if (isset($list))
			{
				foreach($list as $key => $item)
				{
					$list[$key]->href = ContentHelperRoute::getArticleRoute($item->slug, $item->catslug);
				}
			}
			$rows[] = $list;
						$query->clear();
	$query->select("cat.category_id,pr.product_id, pr.product_publish, pr.`name_zh-CN` as name, pr.`short_description_zh-CN` as short_description, man.`name_zh-CN` as man_name, GROUP_CONCAT(cat.`name_zh-CN` SEPARATOR '<br>') AS namescats, pr.product_ean as ean, pr.product_quantity as qty, pr.product_thumb_image as image, pr.product_price, pr.currency_id, pr.hits, pr.unlimited, pr.product_date_added, pr.label_id ");
				$query->from('#__jshopping_products AS pr ');
				$query->leftJoin('#__jshopping_products_to_categories AS pr_cat USING (product_id) ');
				$query->leftJoin('#__jshopping_categories AS cat ON pr_cat.category_id=cat.category_id ');
				$query->leftJoin('#__jshopping_manufacturers AS man ON pr.product_manufacturer_id=man.manufacturer_id');
				$query->where($tagWhere.' pr.`name_zh-CN` like "%'.$db->escape($text, true).'%"');
				$query->group('pr.product_id');
				$query->order($morder);
			$db->setQuery($query, 0, $limit);
			$list = $db->loadObjectList();
			$rows[] = $list;
		}

		$results = array();
		if (count($rows) > 0)
		{

			foreach($rows as $row)
			{
				$new_row = array();
				foreach($row as $key => $article) {
					// if (searchHelper::checkNoHTML($article, $searchText, array('text', 'title', 'metadesc', 'metakey'))) {
						$new_row[] = $article;
					// }
				}
				$results = array_merge($results, (array) $new_row);
			}
		}
		return $results;
	}
}
