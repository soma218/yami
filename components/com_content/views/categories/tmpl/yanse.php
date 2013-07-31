<?php
defined('_JEXEC') or die;

?>

    <h1>掌握最新最全颜⾊发展变化的趋势，提升产品设计市场喜好⾊彩准确性</h1>
<div class="epidemic1">
    <h2>最新色彩案例</h2>
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
