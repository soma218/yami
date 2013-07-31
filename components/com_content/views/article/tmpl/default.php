<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_content
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers');

// Create shortcuts to some parameters.
$params		= $this->item->params;
$images = json_decode($this->item->images);
$urls = json_decode($this->item->urls);
$canEdit	= $this->item->params->get('access-edit');
$user		= JFactory::getUser();

?>
 <div class="conright">
<?php
// $this->itemtype 1:article 2:image 3:article+imagelist 4:pdf
if($this->itemType != '' ){
	 if($this->itemType == 'article'){
			require_once('news.php');
	}elseif($this->itemType == 'image'){
			require_once('images.php');
	}elseif($this->itemType == 'article_image'){
			require_once('news_images.php');
	}elseif($this->itemType == 'pdf'){
			require_once('pdf.php');
	}elseif($this->itemType == 'city_detail'){
			require_once('citylist.php');
	}elseif($this->itemType == 'logo_detail'){
			require_once('logolist.php');
	}
}
?>
</div>
