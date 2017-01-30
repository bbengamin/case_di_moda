<footer>
  <div class="container">
    <div class="row">
      <!--<?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>-->
      <div class="footer-menu">
        <ul class="nav navbar-nav">
          <li><a href="http://site15.studio-luck.ru/index.php?route=product/category&amp;path=60">Женские аксессуары</a></li>
          <li><a href="http://site15.studio-luck.ru/index.php?route=product/category&amp;path=59">Женские Сумки</a></li>
          <li><a href="http://site15.studio-luck.ru/index.php?route=product/category&amp;path=62">Мужские аксессуары</a></li>
          <li><a href="http://site15.studio-luck.ru/index.php?route=product/category&amp;path=61">Мужские сумки</a></li>
          <li class="pull-right pay-systems">
            <span><img src="/catalog/view/theme/default/image/visa-card.png" class="img-responsive"></span>
            <span><img src="/catalog/view/theme/default/image/mast-card.png" class="img-responsive"></span>
          </li>
        </ul>
      </div>
    </div>
    <hr>
    <p class="cprt">© 2016 <a href="http://CasaDiMora.com">CasaDiMora.com</a> Все права защищены. Информация на сайте не является публичной офертой</p>
  </div>

  <!-- Modal callback -->
  <div id="myModal-call-back" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <div class="modal-form">
            <form id="modal-call-back-form">
              <p>Заполните форму и мы с вами свяжемся</p>
              <div class="input-field">
                <input type="text" name="name" required="required" placeholder="Имя">
              </div>
              <div class="input-field">
                <input type="text" name="phone" required="required" placeholder="7(000)000-00-00">
              </div>
              <div class="input-field">
                <button type="submit" id="call-back-form-button">Заказать звонок</button>
              </div>
            </form>
            <div style="display: none">Спасибо, наш менеджер свяжется с Вам в ближайшее время</div>
          </div>
        </div>
      </div>

    </div>
  </div>

  <!-- Modal quick-buy -->
  <div id="myModal-quick-buy" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <div class="modal-form">
            <form id="modal-quick-buy-form">
              <p>Заполните форму и мы с вами свяжемся</p>
              <div class="input-field">
                <input type="text" name="name" required="required" placeholder="Имя">
              </div>
              <div class="input-field">
                <input type="text" name="phone" required="required" placeholder="7(000)000-00-00">
              </div>
              <div class="input-field">
                <button type="submit" id="call-quick-buy-button">Купить в один клик</button>
              </div>
            </form>
            <div style="display: none">Спасибо, наш менеджер свяжется с Вам в ближайшее время</div>
          </div>
        </div>
      </div>

    </div>
  </div>

  <!-- Fast authorization modal -->
  <div class="modal fade" id="authorization" tabindex="-1" role="dialog" aria-labelledby="authorization-Label" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <div class="modal-body">
          <h4 class="modal-title" id="fast-order-cart-modal-Label">Авторизация</h4>
          <form id='authorization-form'>
            <div class="input-block">
              <label>E-mail:</label>
              <input type="email" name="email">
            </div>
            <div class="input-block">
              <label>Пароль:</label>
              <input type="password" name="password">
            </div>
            <div class="input-block">
              <button class="modal-sumbit-button">Войти</button>
            </div>
          </form>
          <div class="go-to-register">
            <a href="#">Зарегистрироваться</a>
          </div>
          <div class="forgot-pass">
            <a href="#">Забыли пароль?</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Fast registration modal -->
  <div class="modal fade" id="registration" tabindex="-1" role="dialog" aria-labelledby="registration-Label" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <div class="modal-body">
          <h4 class="modal-title" id="fast-order-cart-modal-Label">Регистрация</h4>
          <form id='registration-form'>
            <div class="input-block">
              <label>E-mail</label>
              <input type="email" name="email">
            </div>
            <div class="input-block">
              <label>Пароль:</label>
              <input type="password" name="password">
            </div>
            <div class="input-block">
              <label>Подтвердите пароль:</label>
              <input type="password" name="repeat-password">
            </div>
            <div class="input-block">
              <label>Телефон:</label>
              <input type="number" name="telephone">
            </div>
            <div class="input-block">
              <button class="modal-sumbit-button">Создать аккаунт</button>
            </div>
          </form>
          <div class="go-to-authorization">
            <a href="#">Авторизация</a>
          </div>
        </div>
      </div>
    </div>
  </div>

</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>