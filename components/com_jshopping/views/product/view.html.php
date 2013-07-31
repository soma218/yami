<?php
defined( '_JEXEC' ) or die( 'Restricted access' );
jimport( 'joomla.application.component.view');
// require_once(JPATH_SITE.'/components/com_content/models/categories.php');

class JshoppingViewProduct extends JView
{
    function display($tpl = null){
	
	$catid = JRequest::getVar('catid');
	$parent_id = JRequest::getVar('parent_id');
	$category_id = JRequest::getVar('category_id');
	$db = JFactory::getDbo();
	if(!isset($parent_id)){
	$query = "SELECT parent_id FROM yami_categories as c INNER JOIN yami_jshopping_categories as jc on jc.`name_zh-CN`=c.title where jc.category_id=".$category_id;
	$db->setQuery($query);
	$parent_id = array_pop($db->loadRow());
	}
	$query = "select * from yami_categories where parent_id=$parent_id"; //获取3级菜单
	$db->setQuery($query);
	$catlevel3 = $db->loadObjectList();
	
	$query = "select * from yami_categories where id=$parent_id";//获取2级菜单
	$db->setQuery($query);
	$catlevel2 = $db->loadObject();	
	
	$query = "select * from yami_categories where id=".$catlevel2->parent_id;//获取1级菜单
	$db->setQuery($query);
	$catlevel1 = $db->loadObject();
	
	$this->assignRef('catlevel1',$catlevel1);
	$this->assignRef('catlevel2',$catlevel2);
	$this->assignRef('catlevel3',$catlevel3);
        parent::display($tpl);
	}
}
?>