<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row" id="product"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row" >
        
        <div class="col-sm-5 main-product-img-box">
          <div class="addit-imgs">
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <div class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></div>
            <?php } ?>
            <?php } ?>
          </div>
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <div class='product-picker-box' id='product-picker-block'>
              <ul class='list-unstyled'>
                <?php foreach ($options as $option) { ?>
                  <?php if ($option['type'] == 'image') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label"><?php echo $option['name']; ?></label>
                    <div id="input-option<?php echo $option['product_option_id']; ?>" class='product-picker-box'>
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                      <div class="radio">
                        <input type="radio"  id='as<?php echo $option_value['product_option_value_id']; ?>' name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                        <label for='as<?php echo $option_value['product_option_value_id']; ?>'>
                          <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                          <?php if ($option_value['price']) { ?>
                          (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                  </div>
                  <?php } ?>
                <?php } ?>
              
              </ul>
            </div>
          </ul>
          <?php } ?>
        </div>
        
        <div class="col-sm-4 prod-center-box">
          <div class='product-ttl-box'>
            <p class='prod-category-title'><?php echo $category_name; ?></p>
            <h1><?php echo $heading_title; ?></h1>
          </div>
          
          <div class='border-prod-block'>
          <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><?php echo $price; ?></h2>
            </li>
            <?php } else { ?>
            <li class='if-special-price-box'>
              <h2 class='normal-price'><?php echo $special; ?><span class='older-price' style="text-decoration: line-through;"><?php echo $price; ?></span></h2>
              <h2 class='saved-price'>Экономия <i><?php echo $saved; ?></i></h2>
            </li>
            <?php } ?>
            <?php } ?>
          </ul>
          <div >
            <?php if ($options) { ?>
            <hr>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
           <input type='hidden' name='product_id' value='<?php echo $product_id; ?>'>
           <input type='hidden' name='quantity' value='1'>
            <div class="buttons-product-box">
              <button type="button" onclick="addProductIdToFastorderForm('<?php echo $product_id; ?>')" id="one-click-buy" data-toggle="modal" data-target="#myModal-quick-buy" data-loading-text="<?php echo $text_loading; ?>" class="buttons-product one-click-btn">Купить в один клик</button>
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="main-add-cart-btn">Добавить в корзину</button>
              
            </div>
            <div id='WATCH_OUT'>
              <div class='stack-new watch-out-item'>
                <span class='stack-new-text'>В наличии осталось</span>
                 <span class='stack-new-number'><?php echo $rest; ?> единиц</span>
              </div>
              <div class='view-new watch-out-item'>
                <span class='view-now-text'>Данный товар просматривают</span>
                 <span class='view-now-number'><?php echo $view_now; ?> человек</span>
              </div>
          
            </div>
            
            <div class="cassa-images-box">
              <img src='' class='img-responsive'>
            </div>
            
            <div class='buttons-product-box second-img'>
              <img src='/catalog/view/theme/default/image/casses.jpg' class='img-responsive'>
            </div>
            
            <div class="have-questions">
              <button type="button" onclick="addProductIdToFastorderForm('<?php echo $product_id; ?>')" id="one-click-buy" data-toggle="modal" data-target="#myModal-quick-buy" data-loading-text="<?php echo $text_loading; ?>" class="buttons-product one-click-btn last-product-button">Есть вопросы? Закажите звонок</button>
            </div>
           
          </div>
          </div>
        </div>
        
        <div class='col-sm-3'>
          <div class="tab-pane active" id="tab-description">
            <div class='timer-box'>
              <div class="wr1">
                <div class="eTimerProduct"></div>
              </div>
            </div>
            <div class="manufacturer-img-box">
              <a href='<?php echo $manufacturers; ?>'><img src='<?php echo $manufacturer_image; ?>'></a>
            </div>
            <div class="decript">
              <h3>Описание</h3>
              <?php echo $description; ?>
            </div>
            </div>
            <div class='product-social'>
              <h2>Расскажите друзьям</h2>
              <ul class='list-unstyled list-inline'>
                <li><a href='#'><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href='#'><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href='#'><i class="fa fa-odnoklassniki" aria-hidden="true"></i></a></li>
                <li><a href='#'><i class="fa fa-vk" aria-hidden="true"></i></a></li>
              </ul>
            </div>
        </div>
        
        <div class='advantages-box col-sm-12'>
          <div class='advantages-item'>
            <img src='/catalog/view/theme/default/image/slice-3.png' class='img-responsive'>
            <p>300%<br> соответствия</p>
          </div>
          <div class='advantages-item'>
            <img src='/catalog/view/theme/default/image/slice-4.png' class='img-responsive'>
            <p>Натуральные<br> материалы</p>
          </div>
          <div class='advantages-item'>
            <img src='/catalog/view/theme/default/image/slice-5.png' class='img-responsive'>
            <p>Сделано<br> в Италии</p>
          </div>
          <div class='advantages-item'>
            <img src='/catalog/view/theme/default/image/slice-6.png' class='img-responsive'>
            <p>Гарантия<br> возврата</p>
          </div>
          <div class='advantages-item'>
            <img src='/catalog/view/theme/default/image/slice-7.png' class='img-responsive'>
            <p>Самовывоз<br> из Москвы</p>
          </div>
        </div>
        
        <div class='col-sm-12 prod-blck'>
                                <div class="left-present-box clearfix">
                                    <div class='col-sm-7'>
                                        <h3>Подарок за покупку</h3>
                                        <p>Брендовый шарф или фирменная подвеска. <i class='i-bolder'>Тебе выбирать!</i></p>
                                    </div>
                                    <div class='btn-group-present clearfix col-sm-5'>
                                        <div class="btn-group-present-item col-sm-6">
                                            <span class='present-old-price'>2170 руб.</span>
                                            <span class='present-new-price'>бесплатно</span>
                                            <a href='#'>Выбрать подарок</a>
                                        </div>
                                        <div class="btn-group-present-item col-sm-6">
                                            <span class='present-old-price'>2170 руб.</span>
                                            <span class='present-new-price'>бесплатно</span>
                                            <a href='#'>Выбрать подарок</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
        
      </div>
      <ul class="nav nav-tabs">
        <?php if ($related_products) { ?>
          <li class="<?php if($related_products) { echo 'active'; } ?>"><a class='active' data-toggle="tab" href="#related_products1">Другие модели бренда</a></li>
        <?php } ?>
        <?php if ($related_products && $related_products2) { ?>
        <li><span class='tab-separate'>   —   </span></li>
        <?php } ?>
        <?php if ($related_products2) { ?>
           <li class="<?php if(!$related_products) { echo 'active'; } ?>"><a data-toggle="tab" href="#related_products2">Еще из категории</a></li>
        <?php } ?>
      </ul>
      
      <div class="tab-content">
      <?php if ($related_products) { ?>
        <div id="related_products1" class="tab-pane <?php if($related_products) { echo 'active'; } ?>">
          
          <div class="row">
            <?php $i = 0; ?>
            <?php foreach ($related_products as $product) { ?>
            <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
            <?php } else { ?>
            <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
            <?php } ?>
            <div class="<?php echo $class; ?>">
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
            <?php $i++; ?>
            <?php } ?>
          </div>
        </div>
      <?php } ?>
      <?php if ($related_products2) { ?>
      <div id="related_products2"  class="tab-pane <?php if(!$related_products) { echo 'active'; } ?>">
        
        <div class="row">
          <?php $i = 0; ?>
          <?php foreach ($related_products2 as $product) { ?>
          <?php if ($column_left && $column_right) { ?>
          <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
          <?php } elseif ($column_left || $column_right) { ?>
          <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
          <?php } else { ?>
          <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
          <?php } ?>
          <div class="<?php echo $class; ?>">
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
          <?php $i++; ?>
          <?php } ?>
        </div>
      </div>
      <?php } ?>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart-total').html(json['total']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
<?php if($timer) { ?>
  startTimerProduct("<?php echo $timer; ?>");   
<?php } ?>

function startTimerProduct(time){
	$(".eTimerProduct").eTimer({
		etType: 0, etDate: time, etTitleText: "Скидка действует:", etTitleSize: 22, etShowSign: 1, etSep: ":", etFontFamily: "Trebuchet MS", etTextColor: "#a3a3a3", etPaddingTB: 15, etPaddingLR: 15, etBackground: "#333333", etBorderSize: 0, etBorderRadius: 2, etBorderColor: "white", etShadow: " 0px 0px 10px 0px #333333", etLastUnit: 4, etNumberFontFamily: "Impact", etNumberSize: 35, etNumberColor: "white", etNumberPaddingTB: 0, etNumberPaddingLR: 8, etNumberBackground: "#11abb0", etNumberBorderSize: 0, etNumberBorderRadius: 5, etNumberBorderColor: "white", etNumberShadow: "inset 0px 0px 10px 0px rgba(0, 0, 0, 0.5)"
	});
  $(".wr1").show();
}

$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.main-product-img-box').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});

//--></script>
<?php echo $footer; ?>
