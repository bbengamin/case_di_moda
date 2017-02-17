<div id="cart" class="btn-group btn-block">
  <button type="button" data-toggle="dropdown" onclick="location.href='/index.php?route=checkout/buy'" data-loading-text="<?php echo $text_loading; ?>" class="cart-add-button dropdown-toggle"><span class="left-icons user-ico"><img src="/catalog/view/theme/default/image/shopping-cart-icon.png" class="img-responsive"> </span>Корзина<span id="cart-total"><?php echo $text_items; ?></span></button>
  <!--<ul class="dropdown-menu pull-right">
    <?php if ($products || $vouchers) { ?>
    <li>
      <table class="table table-striped">
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="text-center mini-cart-img-box"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?></td>
          <td class="text-left mini-cart-name-box"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            
            <?php if ($product['recurring']) { ?>
            <br />
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?><br>
            <span class='total-product-mini-cart'><?php echo $product['total']; ?></span>
            </td>
          <td class="text-center mini-cart-remoove-box"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="mini-cart-remoove"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="text-center"></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
          <td class="text-right">x&nbsp;1</td>
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
          <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
      </table>
    </li>
    <li>
      <div>
        
        <p class="text-right">
           <?php foreach ($totals as $total) { ?>
          <span>
            <i><strong>Итого</strong></i>
            <span><?php echo $total['text']; ?></span>
          </span>
           <?php } ?>
          <a href="<?php echo $checkout; ?>" class='mini-cart-remoove-btn'>Оформить</a></p>
      </div>
    </li>
    <?php } else { ?>
    <li>
      <p class="text-center epmty-catr-rext"><?php echo $text_empty; ?></p>
    </li>
    <?php } ?>
  </ul>-->
</div>
