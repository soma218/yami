<?php
/**
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');

/**
 * This models supports retrieving lists of article categories.
 *
 * @package		Joomla.Site
 * @subpackage	com_content
 * @since		1.6
 */
class ContentModelCategories extends JModelList
{
	/**
	 * Model context string.
	 *
	 * @var		string
	 */
	public $_context = 'com_content.categories';

	/**
	 * The category context (allows other extensions to derived from this model).
	 *
	 * @var		string
	 */
	protected $_extension = 'com_content';

	private $_ancestor = null;
	
	private $_parent = null;

	private $_items = null;

	/**
	 * Method to auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @since	1.6
	 */
	protected function populateState()
	{
		$app = JFactory::getApplication();
		$this->setState('filter.extension', $this->_extension);

		// Get the parent id if defined.
		$parentId = JRequest::getInt('id');
		$this->setState('filter.parentId', $parentId);

		$params = $app->getParams();
		$this->setState('params', $params);

		$this->setState('filter.published',	1);
		$this->setState('filter.access',	true);
	}

	/**
	 * Method to get a store id based on model configuration state.
	 *
	 * This is necessary because the model is used by the component and
	 * different modules that might need different sets of data or different
	 * ordering requirements.
	 *
	 * @param	string		$id	A prefix for the store id.
	 *
	 * @return	string		A store id.
	 */
	protected function getStoreId($id = '')
	{
		// Compile the store id.
		$id	.= ':'.$this->getState('filter.extension');
		$id	.= ':'.$this->getState('filter.published');
		$id	.= ':'.$this->getState('filter.access');
		$id	.= ':'.$this->getState('filter.parentId');

		return parent::getStoreId($id);
	}

	/**
	 * Redefine the function an add some properties to make the styling more easy
	 *
	 * @param	bool	$recursive	True if you want to return children recursively.
	 *
	 * @return	mixed	An array of data items on success, false on failure.
	 * @since	1.6
	 */
	public function getItems($recursive = false)
	{
		if (!count($this->_items)) {
			$app = JFactory::getApplication();
			$menu = $app->getMenu();
			$active = $menu->getActive();
			$params = new JRegistry();

			if ($active) {
				$params->loadString($active->params);
			}

			$options = array();
			$options['countItems'] = $params->get('show_cat_num_articles_cat', 1) || !$params->get('show_empty_categories_cat', 0);
			$categories = JCategories::getInstance('Content', $options); 
			$this->_parent = $categories->get($this->getState('filter.parentId', 'root'));

			if (is_object($this->_parent)) {
				$this->_items = $this->_parent->getChildren($recursive);
			}
			else {
				$this->_items = false;
			}
		}

		return $this->_items;
	}

	public function getParent()
	{
		if (!is_object($this->_parent)) {
			$this->getItems();
		}

		return $this->_parent;
	}
	
	public function getAncestor(){
		$categories = JCategories::getInstance('Content');
		$id = JRequest::getVar('id');
		$category = $categories->get($id);
		$items = new stdclass();
		$items->ancestor = $category->getParent();
		$items->parent = $category;
		return $items;
	}
	/* @purpose 获取分类列表的前4天内容
	 * @param $id int 父级子菜单
	 */
	public function getTabContent($id){
		$db = JFactory::getDbo();
		$query = "select title,id from yami_categories where parent_id=".$db->escape($id)." and level=3 ";
		$db->setQuery($query);
		$rows = $db->loadObjectList();
		$content = '';
		foreach($rows as $row){
			if($row->title !='城市介绍' && $row->title !='展会活动日程' ){
				$query = "select * from yami_content where catid=".$db->escape($row->id)." order by created,images DESC limit 6";
				$db->setQuery($query);
				$content .= ' <div class="epidemic2">
									<h2><a href="'.JRoute::_('index.php?option=com_content&view=category&id='.$row->id).'">更多</a>'.$row->title.'</h2>
									<ul class="epidemic21">';
				$results = $db->loadObjectList();
				if($results){
					foreach ($results as $key=>$result) {
						if($key == 5){
							$content .="<li class='' style='margin-right:0;'>";
						}else{
							$content .=  '<li class="">';
						}
						$content .=  '
									<p><a href="#"><img src="'.$result->images.'" width="110" height="110" /></a></p>
									<p class="Txt"><a href="'.JRoute::_('index.php?option=com_content&view=article&catid=88&id='.$result->id).'">'.$result->title.'</a></p><p class="Date">'.$result->created.'</p>
								</li>';
					}
				}
				$content .= '</ul></div>';

			}
		}
		return $content;
	}
	/* @purpose 获取城市介绍内容
	 * @param $id int 城市介绍菜单id
	 */
	public function getCityIntroduced($catId){
			$db = JFactory::getDbo();
			$query = "select * from yami_content where catid=".$db->escape($catId)." order by created,images DESC limit 6";
			$db->setQuery($query);
			$content = '';
			$results = $db->loadObjectList();
			if($results){
				foreach ($results as $key=>$result) {
				// var_dump($result);
					$content .= '<div class="epidemic_227"><a href="#"><img src="images/tide_r1_c1.png" width="227" height="152" /></a><div class="epTxt"><a href="#">巴黎</a></div></div>';
				}
			}
		return $content;
	}
	/* @purpose 获取展会活动内容
	 * @param $id int 展会活动菜单id
	 */
	public function getExhibitionActivity($catId){
			$db = JFactory::getDbo();
			$query = "select * from yami_content where catid=".$db->escape($catId)." order by created,images DESC limit 6";
			$db->setQuery($query);
			$content = '';
			$results = $db->loadObjectList();
			if($results){
				$content .= '<div class="yamitable">
									<li class="tablleTit">
										<div class="time">时间</div>
										<div class="locale">地点</div>
										<div class="name">展会名称</div>
										<div class="link">相关链接</div>
									</li>';
				foreach ($results as $key=>$result) {
					$content .= '
										<li class="tablleList">
											<div class="time">2013.03.23</div>
											<div class="locale">巴黎</div>
											<div class="name">2013巴黎时装周</div>
											<div class="link">http://www.parisfashionweek.com</div>
										</li> ';
				}
				$content .='</div>';
			}
		return $content;
	}	
	/* @purpose 获取品牌列表内容
	 * @param $id int 品牌列表菜单id
	 */
	public function getPopularBrand($catId){
			$db = JFactory::getDbo();
			$query = "select * from yami_content where catid=".$db->escape($catId)." order by created,images DESC limit 6";
			$db->setQuery($query);
			$content = '';
			$results = $db->loadObjectList();
			if($results){
				foreach ($results as $key=>$result) {
					$content .= ' <li><a href="#"><img src="images/brandLogo_r1_c1.png"><font>LOUISVUITTON</font></a></li> ';
				}
			}
		return $content;
	}
}
