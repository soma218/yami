<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_users
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @since		1.6
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
?>
<div class="location">当前位置：<a href="Home.html">首页</a>注册</div>
<div class="content1">
	<div class="conbottom"><img src="images/users/joi_02.jpg" width="962" height="8" /></div>
    <div class="joined">
    	<div class="joined1"><img src="images/users/joi_04.jpg" width="236" height="226" /></div>
    	<div class="joined2">
        <h1>注册</h1>
        <p>感谢您拜访雅觅网站。请填写以下表格, 让雅觅更了解您的需求, 第一时间为您安排最适合您的服务。</p>
		<form id="member-registration" action="<?php echo JRoute::_('index.php?option=com_users&task=registration.register'); ?>" method="post" class="form-validate" enctype="multipart/form-data">	
        <div class="Input"><span>姓　　名</span><input name="jform[name]" type="text" value='' /><font>*</font></div>
        <div class="Input"><span>电子邮箱</span>
          <input name="jform[email]" type="text"  value=''/><font>*</font></div>
        <div class="Input"><span>电　　话</span><input name="jform[phone]" type="text"  value='' /><font>*</font></div>
        <div class="Input"><span>职　　称</span>
          <input name="jform[department]" type="text"   value=''/>
        </div>
        <div class="Drop-down">
        <div class="Drop-down1">所  在  地</div>
        <div class="Drop-down2">选择省市<div class="down21"><a href="">上海</a><a href="">上海</a><a href="">上海</a></div></div>
        <div class="Drop-down2">选择城市<div class="down21 down22"><a href="">上海</a><a href="">上海</a><a href="">上海</a></div></div>
        </div>
        <div class="Select">
        <div class="Drop-down1">感兴趣的流行资讯</div>
        <div class="Select2">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="8%"><input type="checkbox" name="checkbox" id="checkbox5" /></td>
					<td width="42%">花型</td>
					<td width="8%"><label>
					  <input type="checkbox" name="checkbox" id="checkbox" />
					</label></td>
					<td width="42%">面料</td>
				  </tr>
				  <tr>
					<td><input type="checkbox" name="checkbox6" id="checkbox6" /></td>
					<td>设计</td>
					<td><input type="checkbox" name="checkbox2" id="checkbox2" /></td>
					<td>商品展示</td>
				  </tr>
				  <tr>
					<td><input type="checkbox" name="checkbox7" id="checkbox7" /></td>
					<td>服装</td>
					<td><input type="checkbox" name="checkbox3" id="checkbox3" /></td>
					<td>最新展会信息</td>
				  </tr>
				  <tr>
					<td><input type="checkbox" name="checkbox8" id="checkbox8" /></td>
					<td>流行趋势预测</td>
					<td><input type="checkbox" name="checkbox4" id="checkbox4" /></td>
					<td>其他</td>
				  </tr>
				</table>
		</div>
        </div>
		<div>
			<input type="hidden" name="option" value="com_users" />
			<input type="hidden" name="task" value="registration.register" />
			<?php echo JHtml::_('form.token');?>
		</div>
        <div class="Submit"><a href="<?php echo JRoute::_('');?>" title="<?php echo JText::_('JCANCEL');?>" class="Submit2"><?php echo JText::_('JCANCEL');?></a><button type="submit" class="Submit1"><?php echo JText::_('JREGISTER');?></button>带“*”为必须填写内容</div>

		<form>
        </div><!-- end joined2 -->
    </div><!-- end joined -->
  <div class="conbottom"><img src="images/users/joi_01.jpg" width="962" height="8" /></div>
</div>

	</form>
</div>
