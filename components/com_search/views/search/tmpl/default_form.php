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
    <dl class="search01">
      <dd>关  键  词:</dd><dt class="Radio"><input type="text" style="margin-left:12px; width:190px; height:22px; line-height:22px; margin-top:-5px;"/></dl>
    <dl class="search01">
      <dd>发布日期:</dd><dt class="Radio"><a href="#"><i></i>全部</a><a href="#"><i class="Radio1"></i>最新</a><a href="#"><i></i>本周</a><a href="#"><i></i>本周</a><a href="#"><i></i>本季</a></dt></dl>
    <dl class="search01">
      <dd>国　　家:</dd><dt class="Mulcho"><a href="#"><i></i>全部</a><a href="#"><i class="Mulcho1"></i>德国</a><a href="#"><i></i>法国</a><a href="#"><i></i>日本</a><a href="#"><i></i>韩国</a></dt></dl>
      <dl class="search01">
      <dd>城　　市:</dd>
      <dt class="Mulcho"><a href="#"><i></i>全部</a><a href="#"><i class="Mulcho1"></i>米兰</a><a href="#"><i></i>佛罗伦萨</a><a href="#"><i></i>佛罗伦萨</a><a href="#"><i></i>普罗旺斯</a><a href="#"><i></i>纽约</a><a href="#"><i></i>其他</a></dt></dl>
      <dl class="search01">
      <dd>来　　源:</dd>
      <dt class="Mulcho"><a href="#"><i></i>全部</a><a href="#"><i class="Mulcho1"></i>会展</a><a href="#"><i></i>街拍</a><a href="#"><i></i>设计作品</a><a href="#"><i></i>零售</a><a href="#"><i></i>店铺</a><a href="#"><i></i>采购</a><a href="#"><i></i>新闻</a><a href="#"><i></i>杂志</a><a href="#"><i></i>古董</a></dt></dl>
      <dl class="search01">
      <dd>风　　格:</dd>
      <dt class="Mulcho"><a href="#"><i></i>美式田园</a><a href="#"><i class="Mulcho1"></i>欧式简约</a><a href="#"><i></i>日本</a><a href="#"><i></i>韩国</a><a href="#"><i></i>英国</a><a href="#"><i></i>其他</a></dt></dl>
      <dl class="search01" style="border-bottom-style:solid;">
      <dd>会　　展:</dd>
      <dt class="Mulcho"><a href="#"><i></i>法兰克福家纺展</a><a href="#"><i class="Mulcho1"></i>欧式简约</a><a href="#"><i></i>法国</a><a href="#"><i></i>日本</a><a href="#"><i></i>韩国</a><a href="#"><i></i>其他</a></dt></dl>
    <div class="Submit"><a href="" class="Submit2">重&nbsp;置</a><a href="" class="Submit1">提&nbsp;交</a></div>
    <div class="searchtitle2">搜索结果：600 图片</div>
    <div class="lifestyle1">
    <div class="px">排序：</div>
    <div class="rq"><a href="#" class="rqa"><span>发布日期</span></a></div>
    <div class="ll"><a href="#"><span>浏览次数</span></a></div>
    <div class="cs"><a href="#"><span>选择城市</span></a></div>
    <div class="Paging"><em><a href="#">&lt;</a></em><span><a href="#" class="spana">1</a>|<a href="#">2</a>|<a href="#">3</a>|<a href="#">4</a>|<a href="#">5</a>|<a href="#">6</a>|<a href="#">7</a>|<a href="#">...</a></span><em><a href="#">&gt;</a></em></div>
    </div>
    </div>
    </div>
    <div class="conbottom"><img src="images/conzd2.jpg" width="962" height="8" /></div>
</div>
<form id="searchForm" action="<?php echo JRoute::_('index.php?option=com_search');?>" method="post">

	<fieldset class="word">
		<label for="search-searchword">
			<?php echo JText::_('COM_SEARCH_SEARCH_KEYWORD'); ?>
		</label>
		<input type="text" name="searchword" id="search-searchword" size="30" maxlength="<?php echo $upper_limit; ?>" value="<?php echo $this->escape($this->origkeyword); ?>" class="inputbox" />
		<button name="Search" onclick="this.form.submit()" class="button"><?php echo JText::_('COM_SEARCH_SEARCH');?></button>
		<input type="hidden" name="task" value="search" />
	</fieldset>

	<div class="searchintro<?php echo $this->params->get('pageclass_sfx'); ?>">
		<?php if (!empty($this->searchword)):?>
		<p><?php echo JText::plural('COM_SEARCH_SEARCH_KEYWORD_N_RESULTS', $this->total);?></p>
		<?php endif;?>
	</div>

	<fieldset class="phrases">
		<legend><?php echo JText::_('COM_SEARCH_FOR');?>
		</legend>
			<div class="phrases-box">
			<?php echo $this->lists['searchphrase']; ?>
			</div>
			<div class="ordering-box">
			<label for="ordering" class="ordering">
				<?php echo JText::_('COM_SEARCH_ORDERING');?>
			</label>
			<?php echo $this->lists['ordering'];?>
			</div>
	</fieldset>

	<?php if ($this->params->get('search_areas', 1)) : ?>
		<fieldset class="only">
		<legend><?php echo JText::_('COM_SEARCH_SEARCH_ONLY');?></legend>
		<?php foreach ($this->searchareas['search'] as $val => $txt) :
			$checked = is_array($this->searchareas['active']) && in_array($val, $this->searchareas['active']) ? 'checked="checked"' : '';
		?>
		<input type="checkbox" name="areas[]" value="<?php echo $val;?>" id="area-<?php echo $val;?>" <?php echo $checked;?> />
			<label for="area-<?php echo $val;?>">
				<?php echo JText::_($txt); ?>
			</label>
		<?php endforeach; ?>
		</fieldset>
	<?php endif; ?>

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
