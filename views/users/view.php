<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Users */
$names = 'Users Adresses';
$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="users-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'first_name',
            'last_name',
            'login',
            'password',
            'mail',
            'gender',
            'created',
        ],
    ]) ?>
    <?= Html::tag('p', Html::encode($names), ['class' => 'h3 font-weight-bold text-primary']) ?>
    <?php foreach ( $userAdress as $useradr): ?>
        <?= DetailView::widget([
            'model' => $useradr,
            'attributes' => [
                'id',
                'user_id',
                'street',
                'country_id',
                'city',
                'house',
                'office',
                'zip',
            ],
        ]) ?>
    <?php endforeach; ?>
</div>
