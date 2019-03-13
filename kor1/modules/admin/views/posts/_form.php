<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\posts */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="posts-form">
<?php $name=Yii::$app->user->identity['username'];
$email=Yii::$app->user->identity['email'];
 echo"Пользователь:$name";
 ?>
    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true,'value' => "$name",'type'=>"hidden"]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true,'value' => "$email",'type'=>"hidden"]) ?>

    <?= $form->field($model, 'text')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton('Сохранить', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
