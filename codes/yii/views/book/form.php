<?php
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;

$this->title = $model->id ? '修改书籍' : '添加书籍';
$this->params['breadcrumbs'][] = ['label' => '书籍列表', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

$buttinText = $model->id ? '提交' : '添加';

?>

<div class="books-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="books-form">
        <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'nums')->textInput() ?>

        <?= $form->field($model, 'unit')->textInput() ?>

        <?= $form->field($model, 'author')->textInput() ?>

        <div class="form-group">
            <?= Html::submitButton($buttinText, ['class' => 'btn btn-success']) ?>
            <?= Html::a('返回', Url::toRoute('index'), ['class' => 'btn btn-default']) ?>
        </div>

        <?php ActiveForm::end(); ?>
    </div>


</div>
