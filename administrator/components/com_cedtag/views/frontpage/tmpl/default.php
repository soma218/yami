<?php
/**
 * @package Component Tag for Joomla! 2.5
 * @author waltercedric.com
 * @copyright (C) 2012 http://www.waltercedric.com
 * @license GNU/GPL http://www.gnu.org/copyleft/gpl.html
 **/
defined('_JEXEC') or die('Restricted access');

// userhelper for acl
require_once JPATH_SITE . '/administrator/components/com_users/helpers/users.php';
$canDo = UsersHelper::getActions();

// Load the javascript
JHtml::_('behavior.framework');
JHtml::_('behavior.modal', 'a.modal');

require_once JPATH_SITE . '/components/com_cedtag/helpers/helper.php';
?>

<div class="tagpanel">
    <!--
    <div style="float: left;">
            <div class="icon"><a href="index.php?option=com_cedtag&controller=diagnostic&task=toggle"
                                 title="<?php echo JText::_('文章管理');?>"> <img
                src="<?php echo JURI::root() ?>/media/com_cedtag/images/on.png"
                alt="<?php echo JText::_('Switch Off');?>"/> <span><?php echo JText::_('Switch Off');?></span></a>
            </div>
    </div> -->

    <div style="float: left;">
        <div class="icon"><a href="index.php?option=com_cedtag&controller=tag"
                             title="<?php echo JText::_('文章管理');?>"> <img
                src="<?php echo JURI::root() ?>/media/com_cedtag/images/article.png"
                alt="<?php echo JText::_('文章管理');?>"/> <span><?php echo JText::_('文章管理');?></span></a>
        </div>
    </div>
    <div style="float: left;">
        <div class="icon"><a href="index.php?option=com_cedtag&controller=term"
                             title="<?php echo JText::_('标签管理');?>"> <img
                src="<?php echo JURI::root() ?>/media/com_cedtag/images/tag.png"
                alt="<?php echo JText::_('标签管理');?>"/>
            <span><?php echo JText::_('标签管理');?></span></a></div>
    </div>

    <?php if ($canDo->get('core.admin')) { ?>
    <div style="float: left;">
        <div class="icon">
            <a class="modal"
               rel="{handler: 'iframe', size: {x: 875, y: 550}, onClose: function() {}}"
               href="index.php?option=com_config&view=component&component=com_cedtag&path=&tmpl=component"
               title="<?php echo JText::_('配置');?>"> <img
                    src="<?php echo JURI::root() ?>/media/com_cedtag/images/config.png"
                    alt="<?php echo JText::_('配置');?>"/>
                <span><?php echo JText::_('配置');?></span></a></div>
    </div>
    <?php } ?>

    <?php if ($canDo->get('core.create')) { ?>
    <div style="float: left;">
        <div class="icon"><a href="index.php?option=com_cedtag&controller=css"
                             title="<?php echo JText::_('模板管理');?>"> <img
                src="<?php echo JURI::root() ?>/media/com_cedtag/images/css.png"
                alt="<?php echo JText::_('模板管理');?>"/>
            <span><?php echo JText::_('模板管理');?></span></a></div>
    </div>

    <div style="float: left;">
        <div class="icon"><a href="index.php?option=com_cedtag&controller=stopwords"
                             title="<?php echo JText::_('禁用词');?>"> <img
                src="<?php echo JURI::root() ?>/media/com_cedtag/images/gear_forbidden.png"
                alt="<?php echo JText::_('禁用词');?>"/>
            <span><?php echo JText::_('禁用词');?></span></a></div>
    </div>
    <div style="float: left;">
        <div class="icon"><a href="index.php?option=com_cedtag&controller=import"
                             title="<?php echo JText::_('从其他组件导入标签');?>">
            <img src="<?php echo JURI::root() ?>/media/com_cedtag/images/import.png"/>
            <span><?php echo JText::_('导入标签');?></span></a></div>
    </div>
    <div style="float: left;">
        <div class="icon"><a href="index.php?option=com_cedtag&controller=export"
                             title="<?php echo JText::_('从其他组件导出标签');?>">
            <img src="<?php echo JURI::root() ?>/media/com_cedtag/images/export.png"/>
            <span><?php echo JText::_('导出标签');?></span></a></div>
    </div>
    <div style="float: left;">
        <div class="icon"><a href="index.php?option=com_cedtag&controller=maintenance"
                             title="<?php echo JText::_('维护');?>">
            <img src="<?php echo JURI::root() ?>/media/com_cedtag/images/maintenance.png"/>
            <span><?php echo JText::_('维护');?></span></a></div>
    </div>
    <?php } ?>




</div>
