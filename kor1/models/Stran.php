<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "stran".
 *
 * @property int $id
 * @property string $naim
 */
class Stran extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'stran';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['naim'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'naim' => 'Naim',
        ];
    }
}
