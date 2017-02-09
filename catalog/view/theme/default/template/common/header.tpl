<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/etimer.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery-ui.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">

<!-- Все страницы, кроме избранных -->
<?php if($header_type == 'header1') { ?>
<header class='m-head-first'>
  <div class="container">
    <div class="row">
      <div class="col-sm-3">
        <div id="logo">
          <?php if ($logo) { ?>
          <!--<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>-->
          <?php } else { ?>
          <!--<h1><a href="<?php echo $home; ?>">casa di moda</a></h1>-->
          <?php } ?>
          <h1><a href="<?php echo $home; ?>">casa di moda</a></h1>
        </div>
      </div>
      <div class="col-sm-9">
        <nav id="top">
          <div class="">
            
              <div id="top-links" class="nav pull-right">
              
                <ul class="list-inline head-menu-first">
                
                  <li><a href="/index.php?route=information/information&information_id=10" title="Оплата и доставка">Оплата и доставка</a></li>
                  <li><a href="/index.php?route=information/information&information_id=11" title="Гарантия и возвраты">Гарантия и возвраты</a></li>
                  <li><a href="/index.php?route=information/information&information_id=12" title="FAQ">FAQ</a></li>
                  <li><a href="/index.php?route=information/information&information_id=13" title="Подарочные сертификаты">Подарочные сертификаты</a></li>
                  <li><a href="/index.php?route=information/information&information_id=9" title="Контакты">Контакты</a></li>
            
                </ul>
              
                <ul class="list-inline">
                  
                  <!--<li><button type="button" id="call-back-btn" data-toggle="modal" data-target="#myModal-call-back" data-loading-text="<?php echo $text_loading; ?>" class="buttons-product call-back-btn">Перезвоните мне</button></li>-->
                  <li class='soc-icon'><a href="#" title=""><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                  <li class='soc-icon'><a href="#" title=""><i class="fa fa-vk" aria-hidden="true"></i></a></li>
                  <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle login-reg-btn" data-toggle="dropdown"><span class="left-icons user-ico"><img src="/catalog/view/theme/default/image/user-icon.png" class="img-responsive"> </span> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
                    <ul class="dropdown-menu my-settings-menu">
                      <?php if ($logged) { ?>
                      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                      <li><a href="<?php echo $account; ?>">Настройки</a></li>
                      <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                      <?php } else { ?>
                      <li><button type="button" id="registration-btn" data-toggle="modal" data-target="#registration" data-loading-text="<?php echo $text_loading; ?>" class="buttons-product registration-btn">Зарегистрироваться</button></li>
                      <li><button type="button" id="authorization-btn" data-toggle="modal" data-target="#authorization" data-loading-text="<?php echo $text_loading; ?>" class="buttons-product authorization-btn">Войти</button></li>
                      <?php } ?>
                    </ul>
                  </li>
                </ul>
              </div>
          </div>
        </nav>
      </div>
     
    </div>
  </div>
</header>
<div class="main-menu-wrapper">
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle top-menu-link" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li>
                    <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                    <div class='additional-categories'>
                      <?php foreach ($child['children'] as $child2) { ?>
                          <a href='<?php echo $child2['href']; ?>'><?php echo $child2['name']; ?></a>
                      <?php } ?>
                    </div>
                </li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <div class='drop-dwn-footer-box'>
              <ul class='list-unstyled list-inline'>
                <li><a href='#'>Каталог</a></li>
                <li><a href='#'>Обратная связь</a></li>
                <li><a href='#'>Мы в соц.сетях</a></li>
                <li class='soc-icon'><a href="#" title=""><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                  <li class='soc-icon'><a href="#" title=""><i class="fa fa-vk" aria-hidden="true"></i></a></li>
              </ul>
            </div>
          </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
        <li class='sec-head-right-side-box'>
          <ul class='list-unstyled sec-head-right-side'>
            <li class='sec-head-right-side-item'><?php echo $cart; ?></li>
            <li class='sec-head-right-side-item'><?php echo $search; ?></li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
</div>
<?php } ?>
<!-- Избранные страницы -->

<?php if($header_type == 'header2') { ?>
<nav id="top">
          <div class="container">
            <div class="">
              <div id="top-links" class="nav pull-left">
              
                <ul class="list-inline head-menu-first">
                
                     <li><a href="/index.php?route=information/information&information_id=10" title="Оплата и доставка">Оплата и доставка</a></li>
                  <li><a href="/index.php?route=information/information&information_id=11" title="Гарантия и возвраты">Гарантия и возвраты</a></li>
                  <li><a href="/index.php?route=information/information&information_id=12" title="FAQ">FAQ</a></li>
                  <li><a href="/index.php?route=information/information&information_id=13" title="Подарочные сертификаты">Подарочные сертификаты</a></li>
                  <li><a href="/index.php?route=information/information&information_id=9" title="Контакты">Контакты</a></li>
            
                </ul>
                </div>
                </div>
                </div>
                </nav>
<header class='m-head-second'>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <!--<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>-->
          <?php } else { ?>
          <!--<h1><a href="<?php echo $home; ?>">casa di moda</a></h1>-->
          <?php } ?>
          <h1><a href="<?php echo $home; ?>">casa di moda</a></h1>
        </div>
      </div>
      <div class="col-sm-8">
        
              
                <ul class="list-inline sec-header-inner">
                 <!-- <li>
                    <span class='head-second-phone'><?php echo $telephone; ?></span>
                    <span class='head-second-phone-info'>Бесплатный звонок по РФ</span>
                  </li> -->
                  <li>
                    <span class='head-second-phone'><?php echo $telephone2; ?></span>
                    <span class='head-second-phone-info'>Часы работы 10:00-21:00 МСК</span>
                  </li>
                  <li><button type="button" id="call-back-btn" data-toggle="modal" data-target="#myModal-call-back" data-loading-text="Загрузка..." class="buttons-product call-back-btn">Позвоните мне</button></li>
                  
                </ul>
              </div>
          </div>
        </nav>
      </div>
     
    </div>
  </div>
</header>

<div class="main-menu-wrapper main-menu-wrapper-sec-header">
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <!-- <li><a href="/index.php?route=product/manufacturer">Бренды</a></li> -->
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown drop-category"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle top-menu-link" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li>
                    <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                    <div class='additional-categories'>
                      <?php foreach ($child['children'] as $child2) { ?>
                          <a href='<?php echo $child2['href']; ?>'><?php echo $child2['name']; ?></a>
                      <?php } ?>
                    </div>
                </li>
                <?php } ?>
              </ul>
              <?php } ?>
              <?php if($category['img_menu']){ ?>
                <div class='top-menu-img' style='background-image: url("<?php echo $category["img_menu"]; ?>");'>
               <!--   <img src='<?php echo $category["img_menu"]; ?>'>    -->
                </div>
              <?php } ?>
            </div>
             <div class='drop-dwn-footer-box'>
              <ul class='list-unstyled list-inline'>
               <!-- <li><a href='#'>Каталог</a></li> -->
                <li><a href='#' data-toggle="modal" data-target="#myModal-call-back">Обратная связь</a></li>
                <li><a href='#'>Мы в соц.сетях</a></li>
                <li class='soc-icon'><a href="#" title=""><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                  <li class='soc-icon'><a href="#" title=""><i class="fa fa-vk" aria-hidden="true"></i></a></li>
              </ul>
            </div>
          </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
     
        <li class='sec-head-right-side-box'>
          <ul class='list-unstyled sec-head-right-side'>
            <li class='sec-head-right-side-item'><?php echo $cart; ?></li>
            
            <li class="sec-head-right-side-item dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle login-reg-btn" data-toggle="dropdown"><span class="left-icons user-ico"><img src="/catalog/view/theme/default/image/user-icon.png" class="img-responsive"> </span> <span class=""><?php echo $text_account; ?></span> <span class="caret"></span></a>
                    <ul class="dropdown-menu my-settings-menu">
                      <?php if ($logged) { ?>
                      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                      <li><a href="/index.php?route=account/edit">Настройки</a></li>
                      <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                      <?php } else { ?>
                      <li><button type="button" id="registration-btn" data-toggle="modal" data-target="#registration" data-loading-text="<?php echo $text_loading; ?>" class="buttons-product registration-btn">Зарегистрироваться</button></li>
                      <li><button type="button" id="authorization-btn" data-toggle="modal" data-target="#authorization" data-loading-text="<?php echo $text_loading; ?>" class="buttons-product authorization-btn">Войти</button></li>
                      <?php } ?>
                    </ul>
                  </li>
          </ul>
          </li>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
</div>
<?php } ?>


