<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_menu
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die;

// Note. It is important to remove spaces between elements.
?>
  <div class="nav1">
    <ul>
<?php
foreach ($list as $i => &$item) {
	if($item->level > 1){
		if(empty($items[$item->parent_id]) ){
			$items[$item->parent_id] = '<li><a href="'.$item->link.'">'.$item->title.'</a></li>';
		}else{
		$items[$item->parent_id] .= '<li><a href="'.$item->link.'">'.$item->title.'</a></li>';
		}
	}
}
$num = 0;
foreach ($list as $i => &$item) :
  if($item->level == 1):
  $num ++;
  ?>
  <li class="mainlevel"><a href="<?php echo $item->link; ?>" class="navtab<?php echo $num; ?>"><?php echo $item->title; ?></a>
          <div class="sub_nav nav2" style="left:0px; top:61px; display: none;">
            <div class="nav2_left"></div>
            <ul class="menu">
  <?php
		echo $items[$item->id];
  ?>
        </ul>
        <div class="nav2_right"></div>
      </div>
    </li>
<?php
	endif;
endforeach;
?>
 </ul>

</div>

