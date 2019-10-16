<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
use yii\widgets\LinkPager;

/* @var $this yii\web\View */
/* @var $searchModel app\models\search\Books */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '图书列表';
$this->params['breadcrumbs'][] = $this->title;

$bookStr = '<tr>';
foreach ($books as $book) {
    $bookStr .= '<td>' . $book['id'] . '</td>';
    $bookStr .= '<td>' . $book['name'] . '</td>';
    $bookStr .= '<td>' . $book['nums'] . '</td>';
    $bookStr .= '<td>' . $book['unit'] . '</td>';
    $bookStr .= '<td>' . $book['author'] . '</td>';
    $bookStr .= '<td>' . $book['created_at'] . '</td>';
    $bookStr .= '<td><a class="btn btn-primary" href="' . Url::toRoute(['view', 'id' => $book->id ]) . '">查看</a><a href="' . Url::toRoute(['update', 'id' => $book->id ]) . '" class="btn btn-default" style="margin: 0 10px;">编辑</a>' . Html::a('删除', ['delete', 'id' => $book->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => '确定删除这条 数据?',
                'method' => 'post',
            ],
        ]) . '</td>';

    $bookStr .= '</tr>';
}

?>

<style>
    td button {
        margin: 0 5px;
    }
</style>
<div class="books-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('添加书籍', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <table class="table">
        <thead>
        <tr>
            <th>id</th>
            <th>书籍名称</th>
            <th>书籍数量</th>
            <th>书籍价格</th>
            <th>书籍作者</th>
            <th>创建时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <?= $bookStr; ?>
        </tbody>
    </table>

    <?= LinkPager::widget(['pagination' => $pagination]);?>

</div>
