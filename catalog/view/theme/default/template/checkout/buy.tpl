<?php echo $header; ?>
<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
    <?php if ($attention) { ?>
        <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
            <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        </div><div id="content" class="<?php echo $class; ?>">
            <?php echo $content_top; ?>
            
            <div class='icons-progress'>
                <span class="step active" id='step1'><i class='some-t-check t-check1'>Корзина</i></span>
                <span class="step" id='step2'><i class='some-t-check t-check1'>Адрес</i></span>
                <span class="step" id='step3'><i class='some-t-check t-check1'>Оплата</i></span>
                <span class="step" id='step4'><i class='some-t-check t-check1'>Успешно оформлено</i></span>
            </div>
            <div class='tabs' id="checkout-form">
                <div data-step='step1' class='tab step1 active'>    
            <form action="<?php echo $action; ?>" id='che-form' method="post" enctype="multipart/form-data">
                <div class="table-responsive" id='cart-wrapp'>
                    <table class="table" id='cart-load'>
                        <thead>
                            <tr>
                                <td class="text-left crt-img-column">Товар</td>
                                <td class="text-center crt-name-column"></td>
                                <td class="text-center crt-model-column">Цвет</td>
                                <td class="text-center crt-model-column">Размер</td>
                                <td class="text-center "><?php echo $column_price; ?></td>
                                <td class="text-center crt-qua-column">Количество</td>
                                
                                <td class="text-center crt-total-column">Итого</td>
                                <td class="text-center"></td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($products as $product) { ?>
                                <tr>
                                    <td class="text-center crt-img-column"><?php if ($product['thumb']) { ?>
                                            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                                        <?php } ?>
                                        </td>
                                    <td class="text-left crt-name-column"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                        <?php if (!$product['stock']) { ?>
                                            <span class="text-danger">***</span>
                                        <?php } ?>
                                    </td>
                                    <td class="text-left crt-imgg-column"><img src='<?php echo $product['color']; ?>'> </td>
                                     <td class="text-center crt-size-column"><?php echo $product['size']; ?></td>
                                    
                                    <td class="text-center crt-price-column">
                                        <?php if($product['price2']) { ?>
                                            <P class='old-prc'><?php echo $product['price']; ?></P>
                                            <P class='new-prc'><?php echo $product['price2']; ?></P>
                                        <?php } else{ ?> 
                                            <P class='new-prc'><?php echo $product['price']; ?></p>
                                        <?php } ?> 
                                    </td>
                                    <td class="text-left crt-qua-column">
                                        <div class="input-group btn-block qua-box-main" style="max-width: 200px;">
                                         <div class='minus'>-</div>
                                            <input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="" />
                                        <div class='plus'>+</div>
                                            
                                        </div>
                                    </td>
                                    <td class="text-center crt-ttl-box"><?php echo $product['total']; ?></td>
                                    <td class="text-center crt-remoo-box"><button type="button" data-toggle="tooltip"  class="" onclick="cart.remove('<?php echo $product['key']; ?>');"><i class="fa fa-times"></i></button></td>
                                </tr>
                                
                            <?php } ?>
                          
                            <?php $total = end($totals);  ?>
                            <tr class="total-item">
                                <td colspan="6" style="border:none;"> </td>
                                <td class="text-center"><strong><?php echo $total['title']; ?>:</strong></td>
                                <td class="text-center"><?php echo $total['text']; ?></td>
                            </tr> 
                        </tbody>
                    </table>
                </div>
            </form>
            
            <?php if (($coupon || $voucher || $reward || $shipping) && $settings['buy_cart_modules']) { ?>
                <h2><?php echo $text_next; ?></h2>
                <p><?php echo $text_next_choice; ?></p>
                <div class="panel-group" id="accordion"><?php echo $voucher; ?><?php echo $reward; ?><?php echo $shipping; ?></div>
            <?php } ?>
           <?php /*echo $coupon;*/ ?> 
            
            <a class='buy-mores' href='/'>Прододжить покупки</a>
            <a class='next-step' data-step='step2'>Продолжить оформление</a>
            </div>
            <div data-step='step2' class='tab step2'>
            <!--<h2 class="text-center h1" id="checkout-f"><?php echo $settings['buy_h2'.$lang]; ?></h2>-->
            <br />
            <div class="row inputs-steps-wrap" >
                <?php if($settings['buy_shipping_select']){ ?>
                <div class="form-group">
                    <div id="shipping_methods"></div>
                </div>
                <?php }else{ ?>
                    <div class="hidden"><input type="radio" name="shipping_method" value="flat.flat" checked="checked"></div>
                <?php } ?>
                <br />
                <div class="inputs-second-step-wrap">
                    <?php if($settings['buy_form_headings']){ ?>
                    <div class="form-group">
                        <h2><span class="label label-primary">1</span> <?php echo $settings['buy_heading_1'.$lang]; ?></h2>
                    </div>
                    <?php } ?>
                    <div class="form-group" style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;">
                        <label class="control-label"><?php echo $entry_customer_group; ?></label>
                        <?php foreach ($customer_groups as $customer_group) { ?>
                            <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                                        <?php echo $customer_group['name']; ?></label>
                                </div>
                            <?php } else { ?>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
                                        <?php echo $customer_group['name']; ?></label>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    </div>
                    <div class='col-sm-6'>
                    <?php if($settings['buy_firstname_status']){ ?>
                    <div class="form-group<?php if($settings['buy_firstname_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-firstname">Имя</label>
                        <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="Имя" id="input-payment-firstname" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_lastname_status']){ ?>
                    <div class="form-group<?php if($settings['buy_lastname_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-lastname"><?php echo $entry_lastname; ?></label>
                        <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-payment-lastname" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_email_status']){ ?>
                    <div class="form-group<?php if($settings['buy_email_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-email"><?php echo $entry_email; ?></label>
                        <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-payment-email" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_telephone_status']){ ?>
                    <div class="form-group<?php if($settings['buy_telephone_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-telephone"><?php echo $entry_telephone; ?></label>
                        <input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-payment-telephone" class="form-control" />
                    </div>
                    <?php } ?>
                    </div>
                    
                    <div class='col-sm-6'>
                    <?php if($settings['buy_fax_status']){ ?>
                    <div class="form-group<?php if($settings['buy_fax_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-fax"><?php echo $entry_fax; ?></label>
                        <input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-payment-fax" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_company_status']){ ?>
                    <div class="form-group<?php if($settings['buy_company_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-company"><?php echo $entry_company; ?></label>
                        <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-payment-company" class="form-control" />
                    </div>
                    <?php } ?>
                    
                <?php if(!$settings['buy_form_design']){ ?>
                </div>
                <div class="col-sm-6">
                <?php } ?>
                    <?php if($settings['buy_form_headings']){ ?>
                    <div class="form-group">
                        <h2><span class="label label-primary">2</span> <?php echo $settings['buy_heading_2'.$lang]; ?></h2>
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_country_status']){ ?>
                    <div class="form-group<?php if($settings['buy_country_required']){ ?> required<?php } ?>" id="payment-country">
                        <label class="control-label" for="input-payment-country"><?php echo $entry_country; ?></label>
                        <select name="country_id" id="input-payment-country" class="form-control">
                            <option value=""><?php echo $text_select; ?></option>
                            <?php foreach ($countries as $country) { ?>
                                <?php if ($country['country_id'] == $country_id) { ?>
                                    <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                <?php } else { ?>
                                    <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                    <?php }else{ ?>
                    <div class="hidden">
                        <select name="country_id">
                            <option value="<?php echo $country_id; ?>" selected="selected"></option>
                        </select>
                    </div>
                    <?php } ?>
                    <?php /* if($settings['buy_zone_status']){ ?>
                    <div class="form-group has-feedback<?php if($settings['buy_zone_required']){ ?> required<?php } ?>" id="payment-zone">
                        <label class="control-label" for="input-payment-zone"><?php echo $entry_zone; ?></label>
                        <select name="zone_id" id="input-payment-zone" class="form-control" onchange="updateShM(this.value);">
                        </select>
                    </div>
                    <?php }else{ ?>
                    <div class="hidden">
                        <select name="zone_id">
                            <option value="<?php echo $zone_id; ?>" selected="selected"></option>
                        </select>
                    </div>
                    <?php } */ ?>
                    
                    <input type="hidden" name="zone_id" value="<?php echo $zone_id; ?>">
                    
                    <?php if($settings['buy_city_status']){ ?>
                    <div class="form-group<?php if($settings['buy_city_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-city"><?php echo $entry_city; ?></label>
                        <input type="text" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-payment-city" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_postcode_status']){ ?>
                    <div class="form-group<?php if($settings['buy_postcode_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>
                        <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-payment-postcode" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_address_1_status']){ ?>
                    <div class="form-group<?php if($settings['buy_address_1_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-address-1"><?php echo $entry_address_1; ?></label>
                        <input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-payment-address-1" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_address_2_status']){ ?>
                    <div class="form-group<?php if($settings['buy_address_2_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-address-2"><?php echo $entry_address_2; ?></label>
                        <input type="text" name="address_2" value="<?php echo $address_2; ?>" placeholder="<?php echo $entry_address_2; ?>" id="input-payment-address-2" class="form-control" />
                    </div>
                    <?php } ?>
                  </div>
                  
                    <?php if($settings['buy_form_headings'] && ($settings['buy_shipping_select'] || $settings['buy_payment_select'])) { ?>
                    <div class="form-group">
                        <h2><span class="label label-primary">3</span> <?php echo $settings['buy_heading_3'.$lang]; ?></h2>
                    </div>
                    <?php } ?>
                   
                    
                    <?php if($settings['buy_comment_status']){ ?>
                    <br />
                    <div class="form-group<?php if($settings['buy_comment_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-comment"><strong><?php echo $entry_comment; ?></strong></label>
                        <textarea name="comment" rows="8" class="form-control" id="input-comment"><?php echo $comment; ?></textarea>
                    </div>
                    <?php } ?>
                    <input type="hidden" name="agree" value="1" />
                    <div id="payment-form"></div>
           
                </div>
            </div>
            <a class='prev-step' data-step='step1'>Назад</a>
            <a class='next-step' data-step='step3'>Продолжить оформление</a>
            </div>
            <div data-step='step3' class='tab step3'>
                <?php if($settings['buy_payment_select']){ ?>
                <div class="form-group">
                    <div id="payment_methods"></div>
                </div>
                <?php }else{ ?>
                    <div class="hidden"><input type="radio" name="payment_method" value="cod" checked="checked"></div>
                <?php } ?>
                
                <a class='prev-step' data-step='step2'>Назад</a>
                <a class='next-step' data-step='step4'>Продолжить оформление</a>
            </div>
            <div data-step='step4' class='tab step4 clearfix'>
            
            <div class='col-sm-4'>
                <span>Доставка</span>
                <div class='ship-st4'>
                    
                </div>
                <div class='address-st4'>
                    
                </div>
                <span>Оплата</span>
                <div class='paym-st4'>
                    
                </div>
            </div>
            <div class='col-sm-8' id='cart-wrapp2'>
                <table class="table" id='cart-load2'>
                        <thead>
                            <tr>
                                <td class="text-left crt-img-column">Изображение</td>
                                <td class="text-center crt-name-column"></td>
                                <td class="text-center crt-model-column">Цвет</td>
                                <td class="text-center crt-model-column">Размер</td>
                                <td class="text-center ">Цена</td>
                                <td class="text-center crt-qua-column">Количество</td>
                                <td class="text-center crt-total-column">Итого</td>
                                <td class="text-center"></td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($products as $product) { ?>
                                <tr>
                                    <td class="text-center crt-img-column"><?php if ($product['thumb']) { ?>
                                            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                                        <?php } ?>
                                        </td>
                                    <td class="text-left crt-name-column"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                        <?php if (!$product['stock']) { ?>
                                            <span class="text-danger">***</span>
                                        <?php } ?>
                                    </td>
                                    <td class="text-left"><img src='<?php echo $product['color']; ?>'> </td>
                                     <td class="text-center"><?php echo $product['size']; ?></td>
                                    
                                    <td class="text-center crt-price-column">
                                        <?php if($product['price2']) { ?>
                                            <P class='old-prc'><?php echo $product['price']; ?></P>
                                            <P class='new-prc'><?php echo $product['price2']; ?></P>
                                        <?php } else{ ?> 
                                            <P class='new-prc'><?php echo $product['price']; ?></p>
                                        <?php } ?> 
                                    </td>
                                    <td class="text-center">
                                            <?php echo $product['quantity']; ?>
                                    </td>
                                    <td class="text-center"><?php echo $product['total']; ?></td>
                                    <td class="text-center crt-remoo-box"><button type="button" data-toggle="tooltip"  class="" onclick="cart.remove('<?php echo $product['key']; ?>');"><i class="fa fa-times"></i></button></td>
                                </tr>
                            <?php } ?>
                          
                            <tr class="total-item">
                                <td colspan="4" style="border:none;"> </td>
                                <td class="text-center"><strong><?php echo $total['title']; ?>:</strong></td>
                                <td class="text-center"><?php echo $total['text']; ?></td>
                            </tr>
                        </tbody>
                    </table>
                    
            </div>
            <a class='prev-step' data-step='step3'>Назад</a>
            <input type="button" value="Подтвердить заказ" id="button-order" data-loading-text="<?php echo $text_loading; ?>" class="confirm-order-btn" />
            </div>

            <div class='present-box'>
                <div class="container">
                    <div class="row">
                        <div class="present-inner-box clearfix">
                            <div class='col-sm-7'>
                                <div class="left-present-box clearfix">
                                    <div class='col-sm-7' style='padding:0'>
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
                            <div class='col-sm-5'>
                                <div class="right-present-box">
                                    <div>
                                        <p>Самовывоз<br> из Москва - Сити</p>
                                    </div>
                                    <div class='btn-group-present'>
                                        <div class="btn-group-present-item">
                                            <a href='#' class='present-read-more'>Подробнее</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>






            <?php echo $content_bottom; ?></div></div>
        <?php echo $column_right; ?></div>
</div>
<script>
    $('.step2 input[type="text"]').on('change',function(){
       var firstname = $('#input-payment-firstname').val(); 
       var lastname = $('#input-payment-lastname').val();
       var address = $('#input-payment-address-1').val();
       var city = $('#input-payment-city').val();
       var postcode = $('#input-payment-postcode').val();
       
       $('.address-st4').html(firstname + " " + lastname + "<br>" + address + ", " + city + ",<br>" + postcode);
    });
    
    $('.next-step').on('click',function(){
       var step = $(this).attr('data-step');
       
       $(".tab").removeClass("active");
       
       $(".icons-progress #" + step).addClass("active");
       
       $(".tab." + step).addClass("active");
    });
    
    $('.prev-step').on('click',function(){
       var step = $(this).attr('data-step');
       
       $(".tab").removeClass("active");
       
       $(".icons-progress #step" + (parseInt(step.substring(4,5)) +1)).removeClass("active");
       
       $(".tab." + step).addClass("active");
    });
    
    $('#che-form').on("click", ".minus" ,function(){
        var count = parseInt($(this).next().val());
        $(this).next().val(count-1);
        if(count <= 1 || isNaN(count)){
            $(this).next().val(1);
        }
        $.ajax({
            url: 'index.php?route=checkout/buy/editMy',
            type: 'post',
            data: $(this).next(),
            dataType: 'json',
            success: function(json) {
                $('#che-form').load('index.php?route=checkout/buy #cart-wrapp');
                $('#cart-wrapp2').load('index.php?route=checkout/buy #cart-load2');
            }
        });
    });
    
    $('#che-form').on("click", ".plus" ,function(){
        var count = parseInt($(this).prev().val());
        $(this).prev().val(count+1);
        $.ajax({
            url: 'index.php?route=checkout/buy/editMy',
            type: 'post',
            data: $(this).prev(),
            dataType: 'json',
            success: function(json) {
                $('#che-form').load('index.php?route=checkout/buy #cart-wrapp');
                $('#cart-wrapp2').load('index.php?route=checkout/buy #cart-load2');
            }
        });
    });
</script>
<?php if($settings['buy_telephone_mask']){ ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.maskedinput.min.js"></script>
<?php } ?>
<script type="text/javascript"><!--
cart.remove = function(key) {
        $.ajax({
            url: 'index.php?route=checkout/cart/remove',
            type: 'post',
            data: 'key=' + key,
            dataType: 'json',
            success: function(json) {

                $('#cart-total').html(json['total']);

                if (getURLVar('route') == 'checkout/buy') {
                    location = 'index.php?route=checkout/buy';
                } else {
                    $('#cart > ul').load('index.php?route=common/cart/info ul li');
                }
            }
        });
    }
    $('#checkout-form select[name=\'country_id\']').on('change', function() {
        $.ajax({
            url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
            dataType: 'json',
            beforeSend: function() {
                $('#checkout-form #payment-zone').append('<span class="form-control-feedback"><i class="fa fa-circle-o-notch fa-spin"></i></span>');
            },
            complete: function() {
                $('#checkout-form #payment-zone .form-control-feedback').remove();
            },
            success: function(json) {
                if (json['postcode_required'] == '1') {
                    $('#checkout-form input[name=\'postcode\']').parent().addClass('required');
                } else {
                    $('#checkout-form input[name=\'postcode\']').parent().removeClass('required');
                }

                html = '<option value=""> --- Please Select --- </option>';

                if (json['zone']) {
                    for (i = 0; i < json['zone'].length; i++) {
                        html += '<option value="' + json['zone'][i]['zone_id'] + '"';
                        
                        <?php if(!empty($zone_id)){ ?>
                        if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                            html += ' selected="selected"';
                        }
                        <?php } ?>

                        html += '>' + json['zone'][i]['name'] + '</option>';
                    }
                } else {
                    html += '<option value="0" selected="selected"> --- None --- </option>';
                }

                $('#checkout-form select[name=\'zone_id\']').html(html);
                var zone_id = $('#checkout-form select[name=\'zone_id\']').val();
                if (4224) {
                    updateShM(4224);
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $('#checkout-form select[name=\'country_id\']').trigger('change');
    
    function updateShM(zone_id) {
        //$('#shm_loading, #pay_loading').html(' <img src="image/loading.gif" width="43" height="11" style="margin-top:-3px;vertical-align:middle;">');
<?php if ($settings['buy_shipping_select']) { ?>
            $('#shipping_methods').load('index.php?route=checkout/buy/getShippingMethods&zone_id=' + zone_id, function() {
                $('#shm_loading').empty();
                selectShipping();
            });
<?php } ?>
        $('#payment_methods').load('index.php?route=checkout/buy/getPaymentMethods&zone_id=' + zone_id, function() {
            $('#pay_loading').empty();
        });
    }
    function getPaymentForm(code, callback) {
        $.ajax({
            async: false,
            cache: false,
            url: 'index.php?route=checkout/buy/getPaymentForm',
            type: 'post',
            data: 'code=' + code.split('.')[0] + '&payment_method=' + code,
            dataType: 'json',
            success: function(json) {
                $('#payment_form2').html(json['output']);
                callback();
            }
        });
    }
    $('#button-order').click(function() {
        $.ajax({
            url: 'index.php?route=checkout/buy/save',
            type: 'post',
            data: $('#checkout-form input[type=\'text\'], #checkout-form input[type=\'checkbox\']:checked, #checkout-form select, #checkout-form input[type=\'radio\']:checked, #checkout-form textarea, #checkout-form input[type=\'hidden\']'),
            dataType: 'json',
            success: function(json) {
                $('.error').remove();
                $('.warning').remove();
                if (json['redirect']) {
                    location = json['redirect'];
                }
                if (json['error']) {
                    $('#checkout-form .has-error').removeClass('has-error');
                    $('#checkout-form .text-danger').remove();
                    if (json['error']['warning']) {
                        addWarning(json['error']['warning']);
                    }
                    
                    if(json['error']){
                        $('.prev-step[data-step="step3"]').trigger("click");
                        $('.prev-step[data-step="step2"]').trigger("click");
                    }
                    if (json['error']['firstname']) {
                        addError('#input-payment-firstname', json['error']['firstname']);
                    }
                    if (json['error']['lastname']) {
                        addError('#input-payment-lastname', json['error']['lastname']);
                    }
                    if (json['error']['email']) {
                        addError('#input-payment-email', json['error']['email']);
                    }
                    if (json['error']['telephone']) {
                        addError('#input-payment-telephone', json['error']['telephone']);
                    }
                    if (json['error']['fax']) {
                        addError('#input-payment-fax', json['error']['fax']);
                    }
                    if (json['error']['company']) {
                        addError('#input-payment-company', json['error']['company']);
                    }
                    if (json['error']['country']) {
                        addError('#input-payment-country', json['error']['country']);
                    }
                    if (json['error']['zone']) {
                        addError('#input-payment-zone', json['error']['zone']);
                    }
                    if (json['error']['city']) {
                        addError('#input-payment-city', json['error']['city']);
                    }
                    if (json['error']['postcode']) {
                        addError('#input-payment-postcode', json['error']['postcode']);
                    }
                    if (json['error']['address_1']) {
                        addError('#input-payment-address-1', json['error']['address_1']);
                    }

                    $('.wait').remove();
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/buy/confirm',
                        type: 'get',
                        dataType: 'json',
                        success: function() {
                            var code = $('#checkout-form input[name=\'payment_method\']:checked').val();
                            getPaymentForm(code, function() {

                                if ($('p,h1,h2,h3,input[type=text],input[type=radio],input[type=checkbox],input[type=password],select', $('#payment-form')).length > 0) {
                                    $('#payment-form').css('display', 'block');
                                } else {
                                    var payment_form = $('#payment-form form#payment');

                                    if (payment_form.length) {
                                        payment_form.submit();
                                    } else {
                                        var href = $('#payment-form div.buttons a').attr('href');
                                        if (typeof href != 'undefined' && href != '' && href != '#') {
                                            location = href;
                                        } else {
                                            $('#payment-form div.buttons a,#payment-form div.buttons input[type=button],#payment-form div.buttons input[type=submit],#payment-form form input[type=submit]').click();
                                        }
                                    }
                                }
                            });
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError);
                        }
                    });
                }
            }
        });
    });
    function getPaymentForm(code, callback) {
        $.ajax({
            async: false,
            cache: false,
            url: 'index.php?route=checkout/buy/getPaymentForm',
            type: 'post',
            data: 'code=' + code.split('.')[0] + '&payment_method=' + code,
            dataType: 'json',
            success: function(json) {
                $('#payment-form').html(json['output']);
                callback();
            }
        });
    }
    function addWarning(text) {
        $('#checkout-form .alert').remove();
        $('#checkout-form').prepend('<div class="alert alert-danger alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>' + text + '</div>');
        $('html, body').animate({
            scrollTop: $("#checkout-form").offset().top - 15
        }, {
            duration: 500,
            complete: function() {
                $('#checkout-form .alert').animate({opacity: 0}, 100).animate({opacity: 1}, 100);
            }
        });

    }
    function addError(el, text) {
        $(el).parent().addClass('has-error');
        $(el).after('<div class="text-danger">' + text + '</div>');
    }
    function selectShipping(){
        if(typeof($('input[name="shipping_method"]')) !== 'undefined'){
            $.ajax({
                async: false,
                cache: false,
                url: 'index.php?route=checkout/buy/selectShipping',
                type: 'post',
                data: 'code='+$('input[name="shipping_method"]:checked').val(),
                dataType: 'json',
                success: function(json) {
                    $('.ship-st4').text($('input[name="shipping_method"]:checked').attr('data-text'));
                    if(json['totals']){
                      /*  var container = $('.total-item').closest('table');
                        container.children('tbody').children('.total-item').remove();
                        container.children('tbody').append(json['totals']);*/
                    }
                }
            });
        }
    }
    <?php if($settings['buy_telephone_mask']){ ?>
    $("#checkout-form input[name='telephone']").mask("<?php echo $settings['buy_telephone_mask'];?>");
    <?php } ?>
//--></script>
<style type="text/css">
    #checkout-form .has-feedback .form-control-feedback{top:26px;right:10px}
    #checkout-form #shipping_methods .radio, #checkout-form #payment_methods .radio{margin-left:20px}
    #checkout-form #payment-form{display:none}
</style>
<?php echo $footer; ?>