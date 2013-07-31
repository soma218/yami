<?php
defined('_JEXEC') or die;
// var_dump($this->items[$this->parent->id][0]);
?>

    <h1>世界设计风格知识大讲堂</h1>
    <div class="epidemic2 noneBorder">
      <ul class="twoPic">
    	<li><p><a href="<?php echo JRoute::_("index.php?option=com_content&view=category&id=".$this->items[$this->parent->id][0]->id);?>"><img src="images/design_material_r1_c1.png" /></a></p><p class="Txt"><a href="<?php echo JRoute::_("index.php?option=com_content&view=category&id=".$this->items[$this->parent->id][0]->id);?>">风格常识</a></p>
    	</li>
        <li><p><a href="<?php echo JRoute::_("index.php?option=com_content&view=category&id=".$this->items[$this->parent->id][1]->id);?>"><img src="images/design_material_r1_c3.png" /></a></p><p class="Txt"><a href="<?php echo JRoute::_("index.php?option=com_content&view=category&id=".$this->items[$this->parent->id][1]->id);?>">案例学习</a></p>
    	</li>
    </ul>
  </div>

