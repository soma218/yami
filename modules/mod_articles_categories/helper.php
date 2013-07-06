<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_categories
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

require_once JPATH_SITE.'/components/com_content/helpers/route.php';
jimport('joomla.application.categories');

abstract class modArticlesCategoriesHelper
{
	public static function getList(&$params)
	{
		$categories = JCategories::getInstance('Content');
		$catid = JRequest::getVar('catid');
		$cid = JRequest::getVar('id');
		$id = isset($catid)?$catid:$cid; // 如果有catid则为具体文章
		$subCategory = $categories->get($id);
		$category = $subCategory->getParent();
		if ($category != null)
		{
			$items = $category->getChildren();

			if($params->get('count', 0) > 0 && count($items) > $params->get('count', 0))
			{
				$items = array_slice($items, 0, $params->get('count', 0));
			}
	
			return $items;
		}
	}
	
	public function getAncestor(){
		$categories = JCategories::getInstance('Content');
		$catid = JRequest::getVar('catid');
		$cid = JRequest::getVar('id');
		$id = isset($catid)?$catid:$cid; // 如果有catid则为具体文章
		$subCategory = $categories->get($id);
		$category = $subCategory->getParent();
		$parCategory = $categories->get($category->id);
		$items = new stdclass();
		$items->ancestor = $parCategory->getParent();
		$items->parent = $parCategory;
		return $items;
	}


}
