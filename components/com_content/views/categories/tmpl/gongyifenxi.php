<?php
defined('_JEXEC') or die;
?>
    <h1>最新产品生产工艺技术交流与资讯</h1>
    <div class="epidemic1">
    <h2>最新工艺新闻</h2>
	<?php foreach($this->lastcontent as $content):
				$images = json_decode($content->images);
	?>			
		<div class="epidemic11">
			<a href="<?php echo JRoute::_("index.php?option=com_content&view=article&id=".$content->id."&catid="
					.$content->catid);?>"><img src="<?php echo htmlspecialchars($images->image_intro);?>" width="344" height="220" /></a>
			<div class="epTxt"><a href="<?php echo JRoute::_("index.php?option=com_content&view=article&id=".$content->id."&catid="
					.$content->catid);?>"><?php echo $content->title; ?></a></div>
		</div>
<?php endforeach; ?>
    </div>

