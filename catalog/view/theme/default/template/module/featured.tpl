<div class="most-fetured clearfix">
  <div class="col-sm-6 more-featur-block1">
    <div class="featr-item featr-item-big featr-item-brand">
      <a href='/index.php?route=product/manufacturer'>
        <img src='/catalog/view/theme/default/image/news-brend.jpg' class='img-responsive'>
        <span>Бренды</span>
      </a>
    </div>
    <div class="featr-item featr-item-small featr-item-bags">
      <a href='/Test8'>
        <img src='/catalog/view/theme/default/image/news-bags.jpg' class='img-responsive'>
        <span>Сумки</span>
      </a>
    </div>
  </div>
  <div class="col-sm-6 more-featur-block1">
    <div class="featr-item featr-item-small featr-item-mans">
      <a href='/Test13'>
        <img src='/catalog/view/theme/default/image/news-man.jpg' class='img-responsive'>
        <span>Мужское</span>
      </a>
    </div>
    <div class="featr-item featr-item-big featr-item-glasses">
      <a href='Test1'>
        <img src='/catalog/view/theme/default/image/news-glasses.jpg' class='img-responsive'>
        <span>Женское</span>
      </a>
    </div>
  </div>
</div>
<h3 class="mod-ttl"><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div>
        <div class="caption">
          <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
          <!--<p><?php echo $product['description']; ?></p>-->
          <?php if ($product['rating']) { ?>
          <div class="rating">
            <?php for ($i = 1; $i <= 5; $i++) { ?>
            <?php if ($product['rating'] < $i) { ?>
            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
            <?php } else { ?>
            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
            <?php } ?>
            <?php } ?>
          </div>
          <?php } ?>
          <?php if ($product['price']) { ?>
         <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                </p>
          <?php } ?>
        </div>
        <div class="button-group">
          <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="">Добавить в корзину</span></button>
          <button type="button" onclick="addProductIdToFastorderForm('<?php echo $product['product_id']; ?>')" id="one-click-buy" data-toggle="modal" data-target="#myModal-quick-buy" data-loading-text="<?php echo $text_loading; ?>" class="buttons-product one-click-btn">Купить в один клик</button>
          <!--<button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
          <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>-->
        </div>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
