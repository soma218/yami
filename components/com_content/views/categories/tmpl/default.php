<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_content
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT.'/helpers');

?>
<div class="location">当前位置：<a href="Home.html">首页</a><a href="Epidemic.html">市场观察</a><?php echo $this->parent->title ?></div>
<div class="content1">
<?php if ($this->params->get('show_page_heading')) : ?>
<h1>
	<?php echo $this->escape($this->params->get('page_heading')); ?>
</h1>
<?php endif; ?>
<?php if ($this->params->get('show_base_description')) : ?>
	<?php 	//If there is a description in the menu parameters use that; ?>
		<?php if($this->params->get('categories_description')) : ?>
			<?php echo  JHtml::_('content.prepare', $this->params->get('categories_description'), '', 'com_content.categories'); ?>
		<?php  else: ?>
			<?php //Otherwise get one from the database if it exists. ?>
			<?php  if ($this->parent->description) : ?>
				<div class="category-desc">
					<?php  echo JHtml::_('content.prepare', $this->parent->description, '', 'com_content.categories'); ?>
				</div>
			<?php  endif; ?>
		<?php  endif; ?>
	<?php endif; ?>

<?php
	echo $this->loadTemplate('items');
?>
 <div class="conright">
<?php	 
switch(JRequest::getVar('id')){
case 79:
		require_once('liuxingbaogao.php');
		break;
case 85:
		require_once('chaoliudushi.php');
		break;
case 86:
		require_once('zhanhuihuodong.php');
		break;
case 87:
		require_once('pinpaiguancha.php');
		break;
case 84:
		require_once('xinwenshangwu.php');
		break;
case 83:
		require_once('shineibaogao.php');
		break;
default:
null;
}
echo $this->tabcontent;
?>
  
</div>
</div>
