<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_users
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @since		1.5
 */

defined('_JEXEC') or die;
JHtml::_('behavior.keepalive');
?>
<div class="location">当前位置：<a href="Home.html">首页</a>登录</div>
<div class="content1">
	<div class="conbottom"><img src="images/users/joi_02.jpg" width="962" height="8" /></div>
		<div class="joined">
			<div class="LoginLeft"></div>
			<div class="LoginRight">
				<h1>登录</h1>
				<p>输入你的用户名和密码</p>
				<form action="<?php echo JRoute::_('index.php?option=com_users&task=user.login'); ?>" method="post">
					<div class="LoginBox">
						<?php foreach ($this->form->getFieldset('credentials') as $field): ?>
							<?php if (!$field->hidden): ?>
								<?php echo $field->input; ?>
							<?php endif; ?>
						<?php endforeach; ?>
					</div>
					<div class="LoginSubmit">	
						<button type="submit" class="Submit1"><?php echo JText::_('JLOGIN'); ?></button>
						<div class="rememberPassword">
							<?php if (JPluginHelper::isEnabled('system', 'remember')) : ?>
								<label id="remember-lbl" for="remember"><?php echo JText::_('JGLOBAL_REMEMBER_ME') ?></label>
								<span><input id="remember" type="checkbox" name="remember" class="inputbox" value="yes"  alt="<?php echo JText::_('JGLOBAL_REMEMBER_ME') ?>" /><span>
							<?php endif; ?>
						</div>
					</div><!-- LoginSubmit -->
					<input type="hidden" name="return" value="<?php echo base64_encode($this->params->get('login_redirect_url', 'index.php?option=com_content&view=article')); ?>" />
					<?php echo JHtml::_('form.token'); ?>
				</form>
				<p class="cue">
					忘记自己的用户名？<a href="<?php echo JRoute::_('index.php?option=com_users&view=remind'); ?>"><?php echo JText::_('COM_USERS_LOGIN_REMIND'); ?></a>
					<br />忘记自己的密码？<a href="<?php echo JRoute::_('index.php?option=com_users&view=reset'); ?>"><?php echo JText::_('COM_USERS_LOGIN_RESET'); ?></a>
					<br />没有雅觅的账号？立即<a href="#">联系雅觅</a>，<a href="<?php echo JRoute::_('index.php?option=com_users&view=registration'); ?>">
					<?php echo JText::_('COM_USERS_LOGIN_REGISTER'); ?></a>
				</p><!-- cue -->
        </div><!-- LoginRight -->
	   <div class="conbottom"><img src="images/users/joi_01.jpg" width="962" height="8" /></div>
	</div><!-- joined -->
</div>
