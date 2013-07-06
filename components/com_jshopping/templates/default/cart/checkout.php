<?php defined('_JEXEC') or die(); ?>
<div class="location">当前位置：<a href="Home.html">首页</a>购物车</div>
<div class="content1">
	<div class="conbottom"><img src="images/joi_02.jpg" width="962" height="8" /></div>
    <div class="joined">    
    	<div class="shopping">
        <h1>购物车</h1>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="shForm">
  <tr class="title">
    <td width="16%">缩略图</td>
    <td width="17%">名称</td>
    <td width="21%">编号</td>
    <td width="21%">数量</td>
    <td width="12%">操作</td>
  </tr>
  <?php 
  $i=1; $countprod = count($this->products);
  foreach($this->products as $key_id=>$prod){?> 
  <tr class = "jshop_prod_cart <?php if ($i%2==0) print "even"; else print "odd"?>">
    <td class = "jshop_img_description_center">
      <a href = "<?php print $prod['href']; ?>">
        <img src = "<?php print $this->image_product_path ?>/<?php if ($prod['thumb_image']) print $prod['thumb_image']; else print $this->no_image; ?>" alt = "<?php print htmlspecialchars($prod['product_name']);?>" class = "jshop_img" />
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
        <?php if ($this->config->show_delivery_time_step5 && $this->step==5 && $prod['delivery_times_id']){?>
        <div class="deliverytime"><?php print _JSHOP_DELIVERY_TIME?>: <?php print $this->deliverytimes[$prod['delivery_times_id']]?></div>
        <?php }?>
    </td>    
    <td>
      <?php print formatprice($prod['price'])?>
      <?php print $prod['_ext_price_html']?>
      <?php if ($this->config->show_tax_product_in_cart && $prod['tax']>0){?>
            <span class="taxinfo"><?php print productTaxInfo($prod['tax']);?></span>
        <?php }?>
    </td>
    <td>
      <?php print $prod['quantity']?><?php print $prod['_qty_unit'];?>
    </td>
    <td>
      <?php print formatprice($prod['price']*$prod['quantity']);?>
      <?php print $prod['_ext_price_total_html']?>
      <?php if ($this->config->show_tax_product_in_cart && $prod['tax']>0){?>
            <span class="taxinfo"><?php print productTaxInfo($prod['tax']);?></span>
        <?php }?>
    </td>
  </tr>
  <?php 
  $i++;
  } 
  ?>
  </table>
  <?php if ($this->config->show_weight_order){?>  
    <div class="weightorder">
        <?php print _JSHOP_WEIGHT_PRODUCTS?>: <span><?php print formatweight($this->weight);?></span>
    </div>
  <?php }?>
  <br/>

</div>