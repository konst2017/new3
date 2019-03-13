<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 26.03.2016
 * Time: 9:32
 */

namespace app\models;
use yii\db\ActiveRecord;


class TestForm extends ActiveRecord{

    public static function tableName(){
        return 'posts';
    }

    public function attributeLabels(){
        return [
            'name' => 'Имя',
             'fam' => 'Фамилия',
            'email' => 'E-mail',
            'text' => 'Текст сообщения',
        ];
    }

    public function rules(){
        return [
            [ ['name', 'text','fam'], 'required' ],
            [ 'email', 'trim' ],
        ];
    }

} 