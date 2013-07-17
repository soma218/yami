<?php
defined('_JEXEC') or die;
// var_dump($this->items[$this->parent->id][0]);
?>

    <h1>全球最新最热艺术、时尚信息</h1>
	<div class="epidemic1">
		<h2><a href="<?php echo JRoute::_('index.php?option=com_content&view=category&id='.$this->items[$this->parent->id][0]->id);?>">更多</a><?php echo $this->items[$this->parent->id][0]->title; ?></h2>
		<?php echo $this->cityIntroduced; ?>
	</div>

