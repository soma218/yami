<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_search
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
?>
<ul class="epidemic21 lifeli">
	<?php foreach($this->results as $result) : ?>
	<?php if(isset($result->images)): 
				$images = json_decode($result->images);?>
			<li><p><a href="<?php echo JRoute::_($result->href); ?>"><img src="<?php  echo $images->image_intro;?>" width="110" height="110" /></a></p><p class="Txt"><a href="<?php echo JRoute::_($result->href); ?>"><?php echo $result->title; ?></a></p><p class="Date"><?php echo date('Y-m-d',strtotime($result->created)); ?></p>
			</li>
	<?php else: ?>
			<li><p><a href="<?php echo JRoute::_('index.php?option=com_jshopping&controller=product&task=view&category_id='.$result->category_id.'&product_id='.$result->product_id); ?>"><img src="<?php  echo "components/com_jshopping/files/img_products/".$result->image;?>" width="110" height="110" /></a></p><p class="Txt"><a href="<?php echo JRoute::_('index.php?option=com_jshopping&controller=product&task=view&category_id='.$result->category_id.'&product_id='.$result->product_id); ?>"><?php echo $result->name; ?></a></p><p class="Date"><?php echo date('Y-m-d',strtotime($result->product_date_added)); ?></p>
			</li>
	<?php endif; ?>
	<?php endforeach; ?>
</ul>

<div class="pagination">
	<?php echo $this->pagination->getPagesLinks(); ?>
</div>
