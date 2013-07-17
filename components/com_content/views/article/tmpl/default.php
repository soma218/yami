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

 if($this->itemType == '文章'){
require_once('news.php');
}elseif($this->itemType == '图片'){
require_once('images.php');
}elseif($this->itemType == '图文列表'){
require_once('news_images.php');
}elseif($this->itemType == 'pdf文档'){
require_once('pdf.php');
}elseif($this->itemType == '城市列表'){
require_once('citylist.php');
}
?>
</div>
