<?php


// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.framework');
				
// Create some shortcuts.
$params		= &$this->item->params;
$n			= count($this->items);
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));
?>

<?php if (empty($this->items)) : ?>
	<?php if ($this->params->get('show_no_articles', 1)) : ?>
	<p><?php echo JText::_('COM_CONTENT_NO_ARTICLES'); ?></p>
	<?php endif; ?>

<?php else : ?>
<div class="lifestyle">
      <h1>城市介绍</h1>
		  <?php foreach(array_pop($this->children) as $key=>$child):
						$query = "select * from yami_content where catid=".$child->id;
						$db->setQuery($query);
						$results = $db->loadObjectList();
		  ?>
      <div class="epidemic1 epidemic2">
			<h2><?php echo $child->title ?></h2>
			<?php if(!empty($results)):
					foreach($results as $result): $images = json_decode($result->images);?>
				<div class="epidemic_227"><a href="<?php echo JRoute::_('index.php?option=com_content&view=category&id='.$result->id);?>"><img width="227" height="152" src="<?php echo htmlspecialchars($images->image_intro); ?>"></a><div class="epTxt"><a href="#"><?php echo htmlspecialchars($result->title); ?></a></div></div>
				<?php endforeach; ?>
			<?php endif; ?>
		</div>
		<?php endforeach; ?>
 </div>
<?php endif; ?>
