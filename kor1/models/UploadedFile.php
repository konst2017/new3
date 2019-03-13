<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 26.03.2016
 * Time: 9:32
 */
namespace app\models;
 
use yii\base\Model;
use yii\web\UploadedFile;
 
class UploadImage extends Model{
 
    public $image;
 
    public function rules(){
        return[
            [['image'], 'file', 'extensions' => 'png, jpg'],
        ];
    }
 
    public function upload(){
        if($this->validate()){
            var_dump($this->image);
        }else{
            return false;
        }
    }
 
}
?>