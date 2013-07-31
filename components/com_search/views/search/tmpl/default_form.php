<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_search
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
$lang = JFactory::getLanguage();
$upper_limit = $lang->getUpperLimitSearchWord();

?>

<form id="searchForm" action="<?php echo JRoute::_('index.php?option=com_search');?>" method="post">

		<label for="search-searchword">
			<?php echo JText::_('COM_SEARCH_SEARCH_KEYWORD'); ?>
		</label>
		<input type="text" name="searchword" id="search-searchword" size="30" maxlength="<?php echo $upper_limit; ?>" value="<?php echo $this->escape($this->origkeyword); ?>" class="inputbox" />


<dl class="search01">
  <dd>发布日期:</dd>
  <dt class="Radio"><input value="all" type="checkbox" name="ordering">全部</input>
						  <input value="all" type="checkbox" name="ordering">最新</input>
						  <input value="all" type="checkbox" name="ordering">本周</input>
						  <input value="all" type="checkbox" name="ordering">本月</input>
						  <input value="all" type="checkbox" name="ordering">本季</input>
  </dl> 
</dl>
<?php
foreach($this->tags as $tags){
?>
    <dl class="search01">
      <dd><?php echo $tags->parent_name; ?>:</dd>
	  <dt class="Radio">
				<?php 	foreach($tags->list as $tag): ?>
					<input value="<?php echo $tag->category_id; ?>" type="checkbox" name="tags[]" <?php if(!empty($this->listTag)): if(in_array($tag->category_id,$this->listTag)):?>checked<?php endif; endif; ?>/><?php echo $tag->name;?>
				<?php endforeach; ?>
		</dt>
</dl>
<?php } ?>
<div class="Submit"><a name="Search" class="button Submit2" href="javascript:void(0);"><?php echo JText::_('重置');?></a><a name="Search" class="button Submit1" href="javascript:void(0);"><?php echo JText::_('COM_SEARCH_SEARCH');?></a>
		<input type="hidden" name="task" value="search" /></div>

	<div class="searchintro<?php echo $this->params->get('pageclass_sfx'); ?>">
		<?php if (!empty($this->searchword)):?>
		<p><?php echo JText::plural('COM_SEARCH_SEARCH_KEYWORD_N_RESULTS', $this->total);?></p>
		<?php endif;?>
	</div>

	<!-- <legend><?php echo JText::_('COM_SEARCH_FOR');?>
		</legend>
			<div class="phrases-box">
			<?php echo $this->lists['searchphrase']; ?>
			</div> -->


<?php if ($this->total > 0) : ?>

	<div class="form-limit">
		<label for="limit">
			<?php echo JText::_('JGLOBAL_DISPLAY_NUM'); ?>
		</label>
		<?php echo $this->pagination->getLimitBox(); ?>
	</div>
<p class="counter">
		<?php echo $this->pagination->getPagesCounter(); ?>
	</p>

<?php endif; ?>

</form>
<script language="javascript">
$(function(){
	$(".Submit2").click(function(){
		$("input[type=checkbox]").attr("checked",false);
	});
	$(".Submit1").click(function(){
		$("#searchForm").submit();
	});
});

</script>