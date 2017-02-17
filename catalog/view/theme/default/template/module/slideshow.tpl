<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
  <!--<?php $banner = $banners[0];/* foreach ($banners as $banner) { */ ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php /* } */?>-->
</div>
<!-- <div class="interest-box">
  <div class="container">
    <div class="row">
      <div class="interest-inner-box">
        <img src="/catalog/view/theme/default/image/frst-banner-home1.png" class="left-interest img-responsive" alt="">
        <img src="/catalog/view/theme/default/image/frst-banner-home2.png" class="right-interest img-responsive" alt="">
        <div class="interest-inner-item">
          <p class="interest-item-ttl">НОВЫЕ АКССЕСУАРЫ ИЗ США</p>
          <h2 class="interest-head">Коллекция Весна \ Осень</h2>
          <p class="interest-description">Успейте приобрести новую коллекцию.</p>
        </div>
      </div>
    </div>
  </div>
</div> -->
<div class="mega-new-wrap">
  <div class="mega-inner">
    <div class="head-of-mega-info">
      <div class='inf1'>товары класса</div>
      <div class='inf2'>люкс</div>
      <div class='inf3'>со скидками до <i>70%</i></div>
    </div>
    <div class="info-advantages-home">
      <ul class='advantages-home'>
        <li>100% соответствие</li>
        <li>Натуральные материалы</li>
        <li>Сделано в Италии</li>
        <li>Бесплатная доставка</li>
        <li>Гарантия возврата</li>
      </ul>
    </div>
  </div>
</div>
<div class="white-separate"></div>
<script type="text/javascript">
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
</script>