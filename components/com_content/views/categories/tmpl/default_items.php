<?php

/**
 * @package		Joomla.Site
 * @subpackage	com_content
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;


if (count($this->items[$this->parent->id]) > 0 && $this->maxLevelcat != 0) :
?>

	<div class="conleft">
		<div class="conleftTitle"><?php echo $this->parent->title ?></div>
		 <ul class="conleftlist">
			<?php

			 foreach($this->items[$this->parent->id] as $id => $item):
			  echo '<li><a href="'.JRoute::_(ContentHelperRoute::getCategoryRoute($item->id)).'" id="'.$item->id.'">'.$item->title.'</a></li>';
			 endforeach; ?>
			</ul>
			<?php endif; ?>
	</div>

