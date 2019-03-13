<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 26.03.2016
 * Time: 9:32
 */

namespace app\models;
use yii\db\ActiveRecord;
use yii\base\Model;
use yii\web\UploadedFile;

class TestForm extends ActiveRecord{
  public $imageFile;
    public static function tableName(){
        return 'posts';
    }

    public function attributeLabels(){
        return [
            'name' => 'Имя*',
            'email' => 'E-mail',
            'text' => 'Текст сообщения',
            'fam' => 'Фамилия*',
            'oth' => 'Отчество',
            'tem' => 'Тема',



             'sohpol' => 'Cоциальное положение',
            'polotw' => 'Вариант получения ответа',
            'stran' => 'Страны',
            'index' => 'Индекс*',
            'raion' => 'Район',
            'naspunct' => 'Населённый пункт*',
             'region' => 'Регион*', 



               'tipnas' => 'Тип населённого пункта',
            'naimul' => 'Наименование улицы',
            'tipul' => 'Тип улицы',
            'dom' => 'Дом',
            'kor' => 'Корпус',
            'kwar' => 'Квартира',

        ];
    }

    public function rules(){
        return [

    [['imageFile'], 'file', 'skipOnEmpty' => false, 'extensions' => 'png, jpg, doc'],
            [ ['name', 'text', 'fam', 'oth', 
            'tem',



             'sohpol',
           
            'stran',
            'index' ,
            'raion' ,
            'naspunct' ,
             'region' , 

               'index',

               'tipnas' ,
            'naimul' ,
            'tipul' ,
            'dom',
            'kor' ,
            'kwar' ], 'required' ],
            [ 'email', 'trim' ],
        ];
    }

	
 public function upload()
    {
        if ($this->validate()) {
            $this->imageFile->saveAs('uploads/' . $this->imageFile->baseName . '.' . $this->imageFile->extension);
            return true;
        } else {
            return false;
        }
    }	
	
} 