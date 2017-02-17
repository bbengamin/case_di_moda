<?php echo $header; ?><?php if( ! empty( $mfilter_json ) ) { echo '<div id="mfilter-json" style="display:none">' . base64_encode( $mfilter_json ) . '</div>'; } ?>
<div class="categoru-main-ttl-box">
        <?php if ($thumb) { ?> <!-- class="col-sm-2" class="img-thumbnail" -->
        <div class='head-back' style="background-image: url('<?php echo $thumb; ?>');"></div>
        <!--<img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class='img-categ-back' /> -->
        <?php } ?>
  <div class="container">
    <div class="row">
      <div class="title-caregory-inner-box">
        <p><?php if($top_category['name'] != $heading_title) echo $top_category['name']; ?></p>
        <h2><?php echo $heading_title; ?></h2>
        
      </div>
    </div>
  </div>
</div>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">
    <input type='hidden' id='filtered_products_input' value='Всего <?php echo $filtered_products_amount; ?> товаров'>
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><div id="mfilter-content-container">
    

      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      
      <?php } ?>
      <?php if ($categories) { /* ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php */ } ?>
      <?php if ($products) { ?>
      
      <div class="row">
        <div class="col-md-12 sorts-box">
          <p>Сортировть по </p>
          <!--<a class='custom-sort <?php echo $sorts['default']['view']; ?> <?php echo ($sorts['default']['value'] == $sort . "_ " . $order) ? "active" : ""; ?>' href='<?php echo $sorts['default']['href']; ?>'>Умолчанию ↑	↓</a> -->
          <a class='custom-sort <?php echo $sorts['price']['view']; ?> <?php echo ($sorts['price']['value_c'] == $sort . "-" . $order) ? "active" : ""; ?>' href='<?php echo $sorts['price']['href']; ?>'>Цене <span class='ar-up'><i class="fa fa-long-arrow-up" aria-hidden="true"></i></span>	<span class='ar-dwn'><i class="fa fa-long-arrow-down" aria-hidden="true"></i></span></a>
          <a class='custom-sort <?php  echo $sorts['name']['view']; ?> <?php echo ($sorts['name']['value_c'] == $sort . "-" . $order) ? "active" : ""; ?>' href='<?php echo $sorts['name']['href']; ?>'>Названию <span class='ar-up'><i class="fa fa-long-arrow-up" aria-hidden="true"></i></span>	<span class='ar-dwn'><i class="fa fa-long-arrow-down" aria-hidden="true"></i></span></a>
        </div>
      </div>
      <br />
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-grid col-xs-12 col-sm-4">
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
      <div class="row">
        <div class="col-sm-12 text-left"><?php echo $pagination; ?></div>
       
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      </div><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
