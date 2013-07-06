<?php defined('_JEXEC') or die(); ?>
<?php if (!empty($this->text)){?>
<?php echo $this->text;?>
<?php }else{?>
<div style="margin: 40px 100px 10px 400px; color: red; font-size: 200%;"><p><?php print _JSHOP_ORDER_PLACED?></p></div>
<?php }?>