<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Users */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="users-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'first_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'last_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'login')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'password')->passwordInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'mail')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'gender')->dropDownList([ 'M' => 'M', 'F' => 'F', ], ['prompt' => '']) ?>

    <?= $form->field($userAdressModel, 'street')->input('text'); ?>

    <?= $form->field($userAdressModel, 'city')->input('text'); ?>

    <?= $form->field($userAdressModel, 'country_id[]')->dropDownList(
        ['a' => 'UA', 'b' => 'GB']
    ); ?>
    <?= $form->field($userAdressModel, 'house')->input('text'); ?>
    <?= $form->field($userAdressModel, 'office')->input('text'); ?>
    <?= $form->field($userAdressModel, 'zip')->input('text'); ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
