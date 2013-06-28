<?php 
	defined('_JEXEC') or die();
	$countprod = count($this->products);
?>
<div class="location">当前位置：<a href="Home.html">首页</a>购物车</div>
<div class="content1">
	<div class="conbottom"><img src="images/joi_02.jpg" width="962" height="8" /></div>
    <div class="joined">    
    	<div class="shopping">
        <h1>购物车</h1>
        <form action="<?php print SEFLink('index.php?option=com_jshopping&controller=cart&task=refresh')?>" method="post" name="updateCart">
<?php if ($countprod>0){?>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="shForm">
  <tr class="title">
    <td width="16%">缩略图</td>
    <td width="17%">名称</td>
    <td width="21%">编号</td>
    <td width="21%">数量</td>
    <td width="12%">操作</td>
  </tr>
  <?php 
  $i=1;   
  foreach($this->products as $key_id=>$prod){
  ?> 
  <tr>
    <td>
      <a href="<?php print $prod['href']?>">
        <img src="<?php print $this->image_product_path ?>/<?php if ($prod['thumb_image']) print $prod['thumb_image']; else print $this->no_image; ?>" alt="<?php print htmlspecialchars($prod['product_name']);?>" class="jshop_img" />
      </a>
    </td>
    <td class="product_name">
        <a href="<?php print $prod['href']?>"><?php print $prod['product_name']?></a>
        <?php if ($this->config->show_product_code_in_cart){?>
        <span class="jshop_code_prod">(<?php print $prod['ean']?>)</span>
        <?php }?>
        <?php if ($prod['manufacturer']!=''){?>
        <div class="manufacturer"><?php print _JSHOP_MANUFACTURER?>: <span><?php print $prod['manufacturer']?></span></div>
        <?php }?>
        <?php print sprintAtributeInCart($prod['attributes_value']);?>
        <?php print sprintFreeAtributeInCart($prod['free_attributes_value']);?>
        <?php print sprintFreeExtraFiledsInCart($prod['extra_fields']);?>
        <?php print $prod['_ext_attribute_html']?>
    </td>
    <td>
        <?php print formatprice($prod['price']*$prod['quantity']); ?>
        <?php print $prod['_ext_price_total_html']?>
        <?php if ($this->config->show_tax_product_in_cart && $prod['tax']>0){?>
            <span class="taxinfo"><?php print productTaxInfo($prod['tax']);?></span>
        <?php }?>
    </td>
    <td>
      <input type = "text" name = "quantity[<?php print $key_id ?>]" value = "<?php print $prod['quantity'] ?>" class = "inputbox" style = "width: 25px" />
      <?php print $prod['_qty_unit'];?>
      <span class = "cart_reload"><img style="cursor:pointer" src="<?php print $this->image_path ?>/images/reload.png" title="<?php print _JSHOP_UPDATE_CART ?>" alt = "<?php print _JSHOP_UPDATE_CART ?>" onclick="document.updateCart.submit();" /></span>
    </td>

    <td>
      <a href="<?php print $prod['href_delete']?>" onclick="return confirm('<?php print _JSHOP_CONFIRM_REMOVE?>')"><img src = "<?php print $this->image_path ?>images/remove.png" alt = "<?php print _JSHOP_DELETE?>" title = "<?php print _JSHOP_DELETE?>" /></a>
    </td>
  </tr>
  <?php 
  $i++;
  } 
  ?>
</table>

<?php }else{?>
<div class="cart_empty_text"><?php print _JSHOP_CART_EMPTY?></div>
<?php }?>

<div class="Submit shopping2">
    <?php if ($countprod>0){?>
        <a href="<?php print $this->href_checkout ?>" class="Submit2"><?php print _JSHOP_CHECKOUT ?></a>
    <?php }?>
    <a href="<?php print $this->href_checkout ?>" class="Submit1"><?php print _JSHOP_BACK_TO_SHOP ?></a>
</div>
</div>

</div>