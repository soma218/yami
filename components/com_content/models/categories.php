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
	/* @purpose 获取分类列表的子分类的内容
	 * @param $id int 父级子菜单
	 */
	public function getTabResults($catId){
		$db = JFactory::getDbo();
		$query = "select title,id from yami_categories where parent_id=".$db->escape($catId)." and level=3 ";
		$db->setQuery($query);
		$rows = $db->loadObjectList();
		if(empty($rows)){
			$query = "select id from yami_categories where parent_id=".$db->escape($catId);
			$db->setQuery($query);
			$result = $db->loadResultArray();
			if(empty($result)){ //from getExhibitionActivity
				$query = "select * from yami_content where catid=".$db->escape($catId)." order by created,images DESC limit 6";

			}else{ //from getBrand,getPopularBrand,getCityIntroduced
				$ids = implode(',',$result);
				$query = "select * from yami_content where catid in (".$db->escape($ids).") order by catid,created,images DESC limit 12";
			}
			$db->setQuery($query);
			$results = $db->loadObjectList();
		}else{
			$results = new stdclass();
			foreach($rows as $row){ //from getTabContent
				$query = "select * from yami_content where catid=".$db->escape($row->id)." order by created,images DESC limit 6";
				$db->setQuery($query);
				$id = $row->id;
				$results->$id = (object)array('catTile'=>$row->title,'result'=>$db->loadObjectList());
			}
		}
		return $results;
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
						$images = json_decode($result->images);
						if ($images->image_intro_caption){
							$title = htmlspecialchars($images->image_intro_caption);
						}else{
							$title='';
						}
						if($key == 5){
							$content .="<li class='' style='margin-right:0;'>";
						}else{
							$content .=  '<li class="">';
						}
						$content .=  '
									<p><a href="#"><img title="' .$title .'" src="'.htmlspecialchars($images->image_intro).'" width="110" height="110" alt="'.htmlspecialchars($images->image_intro_alt).'"/></a></p>
									<p class="Txt"><a href="'.JRoute::_('index.php?option=com_content&view=article&catid='.$result->catid.'&id='.$result->id).'">'.$result->title.'</a></p><p class="Date">'.date('Y-m-d', strtotime($result->created) ).'</p>
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
			$query = "select id from yami_categories where parent_id=104";
			$db->setQuery($query);
			$result = $db->loadResultArray();
			$ids = implode(',',$result);
			$query = "select * from yami_content where catid in (".$db->escape($ids).") order by created,images DESC limit 6";
			$db->setQuery($query);
			$content = '';
			$results = $db->loadObjectList();

			if($results){
				foreach ($results as $key=>$result) {
					$images = json_decode($result->images);
					$content .= '<div class="epidemic_227"><a href="'.JRoute::_("index.php?option=com_content&view=article&id=".$result->id."&catid="
					.$catId).'"><img src="'.htmlspecialchars($images->image_intro).'" width="227" height="152" /></a><div class="epTxt"><a href="'.JRoute::_("index.php?option=com_content&view=article&id=".$result->id."&catid=
					".$catId).'">'. $result->title .'</a></div></div>';
				}
			}
		return $content;
	}
	/* @purpose 获取展会活动内容
	 * @param $id int 展会活动菜单id
	 */
	public function getExhibitionActivity($itemid){
			$db = JFactory::getDbo();
			$query = "select * from yami_content where catid=".$db->escape($itemid)." and state=1 order by created,images DESC limit 6";
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
								$query = "select yfv.value,yf.title from yami_fieldsattach as yf left join yami_fieldsattach_values as yfv on yf.id=yfv.fieldsid where articleid=".$result->id;
							$db->setQuery($query);
							$lists = $db->loadObjectList();
							foreach($lists as $list){
								$activityInfo[$list->title] = $list->value;
							}
						$content .= '
										<li class="tablleList">
											<div class="time">'.htmlspecialchars($activityInfo['starttime'].' ~ '.$activityInfo['endtime']).'</div>
											<div class="locale">'.htmlspecialchars($activityInfo['address']).'</div>
											<div class="name">'.$result->title.'</div>
											<div class="link">'.htmlspecialchars($activityInfo['links']).'</div>
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
			$query = "select id from yami_categories where parent_id=$catId";
			$db->setQuery($query);
			$result = $db->loadResultArray();			
			$ids = implode(',',$result);
			$query = "select * from yami_content where catid in (".$db->escape($ids).") order by created,images DESC limit 12";
			$db->setQuery($query);
			$content = '';
			$results = $db->loadObjectList();
			if($results){
				foreach ($results as $key=>$result) {
					$images = json_decode($result->images);
					$content .= ' <li><a href="#"><img src="'.htmlspecialchars($images->image_intro).'" width="112" height="112"><font>'. $result->title .'</font></a></li> ';
				}
			}
		return $content;
	}
	/* @purpose 获取品牌列表内容
	 * @param $id int 品牌列表菜单id
	 */
	public function getBrand($catId){
			$db = JFactory::getDbo();
			$query = "select id,title from yami_categories where parent_id=$catId";
			$db->setQuery($query);
			$results = $db->loadObjectList();
			$content = '';
			foreach($results as $result){
				$content .=  '<div class="BrandWordListTitle" id="'. $result->title .'">'.$result->title.'</div>';
				$query = "select * from yami_content where catid=".$db->escape($result->id)." order by catid ";
				$db->setQuery($query);
				$lists = $db->loadObjectList();
				if($results){
					$content .='<ul class="BrandWordList">';
					foreach ($lists as $list) {
						$content .='<li><a href="#">'.$list->title.'</a></li>';
					}
					$content .= '<div class="clearfix"></div> </ul> ';
				}
			}
		return $content;
	}
	/* @purpose 获取最新的分类内容
	*/
	public function getLastContent(){
			$catId = JRequest::getVar('id');
			$db = JFactory::getDbo();
			$query = "select id from yami_categories where parent_id=$catId";
			$db->setQuery($query);
			$result = $db->loadResultArray();
			$ids = implode(',',$result);
			$query = "select * from yami_content where catid in (".$db->escape($ids).")  order by catid limit 2";
			$db->setQuery($query);
			$results = $db->loadObjectList();
			return $results;
	}
	public function getItemImages(){
			$catId = JRequest::getVar('id');
			$db = JFactory::getDbo();
			$query = "select category_id from yami_jshopping_categories where category_parent_id=0 and `name_zh-CN`='内容分类'"; //获取图片所在的顶级分类
			$db->setQuery($query);
			$category_id = $db->loadRow();
			$query = "select cat.title,jcat.category_id,cat.id from yami_jshopping_categories as jcat left join yami_categories as cat on jcat.`name_zh-CN`=cat.title where jcat.category_parent_id=".$category_id[0]." and  cat.parent_id=$catId"; //获取图片的分类
			$db->setQuery($query);
			$rows = $db->loadObjectList();
			// var_dump($rows);
			$results = new stdclass();
			foreach($rows as $row){ //from getTabContent
				$query = "	 SELECT prod.product_id, pr_cat.category_id, prod.`name_zh-CN` as name, prod.`short_description_zh-CN` as short_description, prod.product_ean, prod.product_thumb_image, prod.product_price, prod.currency_id, prod.product_tax_id as tax_id, prod.product_old_price, prod.product_weight, prod.average_rating, prod.reviews_count, prod.hits, prod.weight_volume_units, prod.basic_price_unit_id, prod.label_id, prod.product_manufacturer_id, prod.min_price, prod.product_quantity, prod.different_prices,prod.product_date_added as created FROM `yami_jshopping_products` AS prod  LEFT JOIN `yami_jshopping_products_to_categories` AS pr_cat USING (product_id) WHERE pr_cat.category_id = '".$row->category_id."' AND prod.product_publish = '1'  AND prod.access IN (1,1,2,3)  ORDER BY name DESC LIMIT 0, 12";
				$db->setQuery($query);
				$id = $row->id;
				$results->$id = (object)array('catTile'=>$row->title,'result'=>$db->loadObjectList());
			}
			return $results;
	}
}
