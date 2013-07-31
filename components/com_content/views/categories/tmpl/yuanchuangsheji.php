<?php
defined('_JEXEC') or die;
// var_dump($this->items[$this->parent->id][0]);
?>

    <h1>海量下载电⼦文件、素材和⽂献</h1>
    <div class="epidemic2 noneBorder">
      <ul class="twoPic">
    	<li><p><a href="<?php echo JRoute::_("index.php?option=com_content&view=category&id=".$this->items[$this->parent->id][0]->id);?>"><img src="images/design_material_r1_c1.png" /></a></p><p class="Txt"><a href="<?php echo JRoute::_("index.php?option=com_content&view=category&id=".$this->items[$this->parent->id][0]->id);?>">会员下载</a></p>
    	</li>
        <li style="margin-right:0"><p><a href="<?php echo JRoute::_("index.php?option=com_content&view=category&id=".$this->items[$this->parent->id][1]->id);?>"><img src="images/design_material_r1_c5.png" /></a></p><p class="Txt"><a href="<?php echo JRoute::_("index.php?option=com_content&view=category&id=".$this->items[$this->parent->id][1]->id);?>">VIP下载</a></p>
    	</li>
    </ul>
  </div>

