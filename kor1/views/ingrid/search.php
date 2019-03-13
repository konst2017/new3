<?php

/* @var $this yii\web\View */
use yii\helpers\Html;
 

$kol=0;
if($ing1!="Все ингридиенты") $kol=$kol+1;
if($ing2!="Все ингридиенты") $kol=$kol+1;
if($ing3!="Все ингридиенты") $kol=$kol+1;
if($ing4!="Все ингридиенты") $kol=$kol+1;
if($ing5!="Все ингридиенты") $kol=$kol+1;

if ($kol>=2)
{

?>
 
                   <?php if(!empty($query)): ?>
<?php

?>
                <?php $i = 0; foreach($query as $product): ?>
                         
                                            <h2><?= $product->name?></h2>
                                        <?php $name=$product->name;?>
                        <?php endforeach;?>
   
                  <?php endif;?>   
<?php
if($name=="")
{

?>
    <?php if(!empty($query4)): ?>
<?php

?>
                <?php $i = 0; foreach($query4 as $product): ?>
                         
                                            <h2><?= $product->name?></h2>
                                       <?php $name=$product->name;?>
                        <?php endforeach;?>
                     <?php endif;?>      

 <?php if(!empty($query3)): ?>
<?php

?>
                <?php $i = 0; foreach($query3 as $product): ?>
                         
                                            <h2><?= $product->name?></h2>
                                        <?php $name=$product->name;?>
                        <?php endforeach;?>
                     <?php endif;?>  

<?php if(!empty($query2)): ?>

 <?php $i = 0; foreach($query2 as $product): ?>
                         
                                            <h2><?= $product->name?></h2>
                                   <?php $name=$product->name;?>   
                        <?php endforeach;?>
                     <?php endif;?>      


<?php
}

if($name=="")
{
echo"Ничего не найдено";
}
}
else
{
echo"Выберите больше ингридиентов";
}
?>
   
               