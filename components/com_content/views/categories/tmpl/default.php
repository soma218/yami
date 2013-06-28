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
<div class="categories-list<?php echo $this->pageclass_sfx;?>">
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
</div>
 <div class="conright">
    <h1>紧随潮流步伐寻找更多创意、灵感、潮流趋势</h1>
    <div class="epidemic1">
    <h2>最新趋势报告</h2>
    <div class="epidemic11"><a href="EpidemicDetailed.html"><img src="images/ep_01.jpg" width="344" height="220" /></a><div class="epTxt"><a href="EpidemicDetailed.html">纽约圣诞节消费市场观</a></div></div>
    <div class="epidemic11 epidemic12"><a href="EpidemicDetailed.html"><img src="images/ep_01.jpg" width="344" height="220" /></a><div class="epTxt"><a href="EpidemicDetailed.html">纽约圣诞节消费市场观</a></div></div>
    </div>
    <div class="epidemic2">
    <h2><a href="#">更多</a>主导趋势</h2>
    <ul class="epidemic21">
    	<li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li style="margin-right:0;"><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
    </ul>
    </div>
    <div class="epidemic2">
    <h2><a href="#">更多</a>创意灵感</h2>
    <ul class="epidemic21">
    	<li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li style="margin-right:0;"><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
    </ul>
    </div>
    <div class="epidemic2">
    <h2><a href="#">更多</a>色彩趋势</h2>
    <ul class="epidemic21">
    	<li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
        <li style="margin-right:0;"><p><a href="#"><img src="images/ep_02.jpg" width="110" height="110" /></a></p><p class="Txt"><a href="#">头条图片新闻标题标题长度控制在25字以内</a></p><p class="Date">2013.01.16</p>
    	</li>
    </ul>
    </div>
    </div>
    <div class="conbottom"><img src="images/conzd2.jpg" width="962" height="8" /></div>
</div>
