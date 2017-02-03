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
      <div class="footer-menu clearfix">
        <ul class="nav navbar-nav">
          <?php foreach($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <?php } ?>
          <li class="pull-right pay-systems">
            <span><img src="/catalog/view/theme/default/image/visa-card.png" class="img-responsive"></span>
            <span><img src="/catalog/view/theme/default/image/mast-card.png" class="img-responsive"></span>
          </li>
        </ul>
      </div>
      <hr>
    <p class="cprt">© 2016 <a href="http://CasaDiMora.com">CasaDiMora.com</a> Все права защищены. Информация на сайте не является публичной офертой</p>
    </div>
    
  </div>
  <?php echo $last_bought ?>
  <!-- Modal callback -->
  <div id="myModal-call-back" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <div class="modal-form">
            <form id="modal-call-back-form">
              <p>Заказать звонок</p>
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

<div id="myModal-activate-special" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body clearfix">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <div class="modal-form col-sm-8">
            <form id="activate-for-form-form">
              <div class='speciales-text'>
                <h4>Хочешь скидку <i>20%</i></h4>
                <p>Активируй низкие цены, которые<br> будет действовать только 60 минут!</p>
              </div>
              <div class="input-field input-field-specials">
                <button type="submit" id="activate-special-btn">Активировать</button>
             
                <button type="submit" id="go-to-login-button" >Войти в личный кабинет</button>
              </div>
            </form>
            <div style="display: none">Поздравляем! Вы активировали скидку 20%, которая будет действительна только в течение 60 минут!</div>
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
              <p>Купить в один клик</p>
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
  
  <div id="myModal-register-for-special" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <div class="modal-form">
            <form id="modal-register-for-special-form">
              <p>Зарегистрируйся, чтобы получить скидку 20%.</p>
            
              <div class="input-field">
                <button type="submit" id="register-for-special-button">Зарегистрироваться</button>
              </div>
            </form>
            <div style="display: none">Спасибо, закончите регистрацию чтобы получить скидку 20%</div>
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
            <a>Зарегистрироваться</a>
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
            <a>Авторизация</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="wr1">
<div class="eTimer"></div></div>
</footer>
<script>
  $(document).ready(function(){
      <?php if($showFormTrySale) { ?>
        setTimeout(showTrySale, 30000);
      <?php } ?>
      <?php if($showFormRegister) { ?>
        setTimeout(showRegister, 30000);
      <?php } ?>
      
      <?php if($timer) { ?>
        startTimer("<?php echo $timer; ?>");   
      <?php } ?>
      
      function showTrySale(){
          $('#myModal-activate-special').modal('show');
      }
      
      function showRegister(){
          $('#myModal-register-for-special').modal('show');
      }
      
      function reloadPage(){
          location.reload();
      }
      
      $('#activate-for-form-form').on('submit',function(e){
          e.preventDefault();
          $.get('index.php?route=api/activate',function(data){
             json = JSON.parse(data);
             startTimer(json.timer);   
             setTimeout(reloadPage,1000);
             $('#activate-for-form-form').hide();
             $('#activate-for-form-form').next().show();
          });
          return false;
      });
      function startTimer(time){
    	/*	$(".eTimer").eTimer({
    			etType: 0, etDate: time, etTitleText: "Скидка действует", etTitleSize: 22, etShowSign: 1, etSep: ":", etFontFamily: "Trebuchet MS", etTextColor: "#a3a3a3", etPaddingTB: 15, etPaddingLR: 15, etBackground: "#333333", etBorderSize: 0, etBorderRadius: 2, etBorderColor: "white", etShadow: " 0px 0px 10px 0px #333333", etLastUnit: 4, etNumberFontFamily: "Impact", etNumberSize: 35, etNumberColor: "white", etNumberPaddingTB: 0, etNumberPaddingLR: 8, etNumberBackground: "#11abb0", etNumberBorderSize: 0, etNumberBorderRadius: 5, etNumberBorderColor: "white", etNumberShadow: "inset 0px 0px 10px 0px rgba(0, 0, 0, 0.5)"
    		});
        $(".wr1").show();*/
      }
      
      $('#go-to-login-button').on('click',function(e){
        e.preventDefault();
        $('#authorization').modal('show');
        return false;
      });
      $('#register-for-special-button').on('click',function(e){
        e.preventDefault();
        $('#registration').modal('show');
        return false;
      });
      

  });
</script>
</body></html>


