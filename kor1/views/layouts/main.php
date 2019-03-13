<?php
/* @var $this \yii\web\View */
/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
AppAsset::register($this);

?>



<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
<script type="text/javascript" src="free_versia_dla_slabovidyashih/special.js"></script>   
</head>
<body>
<?php $this->beginBody() ?>

	
	<!-- Start Rocket -->
	<!-- ********************* -->
	
	<!-- Parallax Background
	================================================== -->
	<!-- image is set in the CSS as a background image -->
	<!-- End Parallax Background
	================================================== -->
	
	<!-- Start Header
	================================================== -->
	



<div id="container">
<div id="navigation">
	<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand visible-xs" href="">LOGO</a>
			</div>
			<div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
				<ul class="nav navbar-nav">
<li>
<a class="logotip" href="">LOGO</a>
							
							
							</li>
				<li id="button_home" class="dropdown">
					<a class="dropdown-toggle" href="#" data-toggle="dropdown">
						Ru
					</a>
				</li>	
				
		
<li>
<a href="<?= \yii\helpers\Url::to(['/post/index'])?>" value="Версия для слабовидящих" id="button_blog">Подать обращение</a></li>
                                                                                              
				
				





<li>
<a href="#" id="button_blog" value="Версия для слабовидящих" onclick="Spec()">Версия для слабовидящих</a>

</li>

<li>
    
</li>
	
				</ul>

<?php
     $navItems=[
   
  ];
  if (Yii::$app->user->isGuest) {
    array_push($navItems,['label' => 'Вход', 'url' => ['/user/login']],['label' => 'Регистрация', 'url' => ['/user/register']]);
  } else {
    array_push($navItems,['label' => 'Выход (' . Yii::$app->user->identity->username . ')',
        'url' => ['/site/logout'],
        'linkOptions' => ['data-method' => 'post']]
    );
	
 array_push($navItems,['label' => 'Личный кабинет', 'url' => ['/admin']]);	
	
  }
echo Nav::widget([
    'options' => ['class' => 'navbar-nav navbar-left'],
    'items' => $navItems,
]);
    
    ?>



									
									


   
 




			</div>

<div id="">
	
		</div>

	</div>


	
	 <div class="container2">
<div id="bblock">
	    <div class="navbar-header">
	      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <!-- Your Logo -->
	      <a href="../" class="navbar-brand">Минтруд <br> России</a>
	    </div>
</div>
<div id="bblock2">
	    <!-- Start Navigation -->
	    <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	      <ul class="nav navbar-nav">


	        <li>
	          <a href="<?= \yii\helpers\Url::to(['/site/onas'])?>">Министерство </a>
	        </li>
	        <li>
	         <a href="<?= \yii\helpers\Url::to(['/site/dejat'])?>">Деятельность</a>
	        </li>
	        <li>
	          <a href="<?= \yii\helpers\Url::to(['/site/pres'])?>">Пресс-центр</a>
	        </li>
	        <li>
	          <a href="<?= \yii\helpers\Url::to(['/site/dok'])?>">Документы</a>
	        </li>
	        <li>
	          <a href="<?= \yii\helpers\Url::to(['/site/gos'])?>">Госуслуги</a>
	        </li>
	        <li>
	          <a href="<?= \yii\helpers\Url::to(['/site/otk'])?>">Открытое министерство</a>
	        </li>
	        <li>
	          <a href="<?= \yii\helpers\Url::to(['/site/kon'])?>">Контакты</a>
	        </li>
	      </ul>
	     
	    </nav>
	 </div>
	</div>
	
	<div class="container2">
		 
	<div id="content">
	
  <?= $content ?>
	</div>

<div id="sidebar">
	<img src="images\lewm2.png" 
width=80% alt="lorem">
<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

</div>

 <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	      <ul class="nav ">
	        <li>
	         <a class="bot1" href="<?= \yii\helpers\Url::to(['/site/pens'])?>">Закон о пенсиях </a>
	        </li>
	        <li>
	          <a class="bot1" href="<?= \yii\helpers\Url::to(['/site/form'])?>">Общественная приёмная</a>
	        </li>


                 <li>
	          <a class="bot1" href="https://bus.gov.ru/pub/independentRating/list"  target="_blank">Результат независимой оценки </a>
	        </li>
	        <li>
	          <a class="bot1" href="<?= \yii\helpers\Url::to(['/site/form'])?>">Бюджет</a>
	        </li>
	        <li>
<ul>
</nav>
</div>

	</div>



	
	<div id="clear">
		 
	</div>
							   
	<div id="footer">
	
 
                        <p class="text-dark">Телефон: <a href="tel:+74956060060" class="link-text text-dark">+7 (495) 870-67-00</a></p>
                        <p class="text-dark">127994, ГСП-4, г. Москва, ул. Ильинка, 21</p>
                

	</div>
</div>

		<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
