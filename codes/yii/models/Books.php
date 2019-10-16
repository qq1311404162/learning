<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "books".
 *
 * @property int $id
 * @property string $name 书籍名称
 * @property string $nums 书籍数量
 * @property string $unit 书籍价格
 * @property string $author 书籍作者
 * @property string $created_at 创建时间
 * @property string $updated_at 修改时间
 */
class Books extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'books';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'nums', 'unit', 'author'], 'required'],
            [['unit', 'nums'], 'number'],
            [['created_at', 'updated_at'], 'safe'],
            [['name'], 'string', 'max' => 50],
            [['author'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => '书籍名称',
            'nums' => '数量',
            'unit' => '书籍价格',
            'author' => '作者',
            'created_at' => '创建时间',
            'updated_at' => '修改时间',
        ];
    }
}
