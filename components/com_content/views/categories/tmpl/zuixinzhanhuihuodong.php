<?php
defined('_JEXEC') or die;

?>
    <div class="epidemic2">
    <h2><a href="<?php echo JRoute::_("index.php?option=com_content&view=category&id=".$this->exhibitionActivity_id); ?>">查看全年展会日程</a>最近展会日程</h2>
    <div class="yamitable"><?php echo $this->exhibitionActivity; ?></div>
	</div>

