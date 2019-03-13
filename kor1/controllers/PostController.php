<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 14.03.2016
 * Time: 21:17
 */

namespace app\controllers;
use app\models\Stran;
use app\models\Region;
use Yii;
use app\models\TestForm;
use yii\web\UploadedFile;
use app\models\Order;
use app\models\OrderItems;
class PostController extends AppController{

    public $layout = 'main';

    public function beforeAction($action){
        if( $action->id == 'index' ){
            $this->enableCsrfValidation = false;
        }
        return parent::beforeAction($action);
    }

    public function actionIndex($target = ''){
		$target ="soob";	
        if( Yii::$app->request->isAjax ){
            debug(Yii::$app->request->post());
            return 'test';
		$target ="soob";	
        }

        $model = new TestForm();
        /*$model->name = 'Автор';
//        $model->email = '111';
        $model->text = 'Текст сообщения';
        $model->save();*/

        if( $model->load(Yii::$app->request->post()) ){
			
			 $model->file = UploadedFile::getInstance($model, 'file');

            if ($model->file && $model->validate()) {                
                $model->file->saveAs('uploads/' . $model->file->baseName . '.' . $model->file->extension);
				 Yii::$app->session->setFlash('success', 'Картинка загружена');
            }
			
			
			
            if( $model->save() ){
			$email = [$model->email];	
                Yii::$app->session->setFlash('success', 'Данные приняты и отправлены на модерацию');
				
			 Yii::$app->mailer->compose('order',['email' => $email])
                    ->setFrom(['spirin.costia@yandex.ru'])
                    ->setTo($email)
                    ->setSubject('Заказ')
                    
                    ->send();	
				$target ="soob";
                return $this->refresh();
            }else{
                Yii::$app->session->setFlash('error', 'Ошибка');
            }
        }
else{
         Yii::$app->session->setFlash('error', 'Ошибка');       
            }

        $this->view->title = 'Все статьи';
        return $this->render('test', compact('model','session', 'order',['target' => $target],'email'));
    }

    public function actionShow(){
        $this->view->title = 'Одна статья!';
        $this->view->registerMetaTag(['name' => 'keywords', 'content' => 'ключевики...']);
        $this->view->registerMetaTag(['name' => 'description', 'content' => 'описание страницы...']);

        // $cats = Category::find()->all(); // отложенная загрузка
        $cats = Category::find()->with('products')->all(); // жадная загрузка

        return $this->render('show', compact('cats'));
    }


   
public function actionLists($id){
        
    $data = '<option>Выбрать...</option>';
    
    if($items = City::find()->where(['region_id'=>$id])->all()){
        foreach($items as $item){
            $data .= "<option value='".$item->id."'>".$item->name."</option>";
        }
    }
    return $data;
}




public function actionGetCitiesByCountryId() {
        $data = City::model()->findAll('country_id=:countryId',
            array(':countryId'=>(int) $_POST['country_id']));
 
        $data = CHtml::listData($data, 'city_id', 'name');
 
        echo "<option value=''>Выберите город</option>";
        foreach($data as $value => $key) {
            echo CHtml::tag('option', array('value' => $value), CHtml::encode($key), true);
        }
    }

	
	
	public function actionDropdown($id) 
{ 
    $countPosts = \app\models\City::find() 
     ->where(['region_id' => $id]) 
     ->count(); 

    $posts = \app\models\City::find() 
     ->where(['region_id' => $id]) 
     ->orderBy('naim ASC') 
     ->all(); 
    echo "<option value=''>-</option>"; 
    if($countPosts>0){ 
     foreach($posts as $post){ 
      echo "<option value='".$post->id."'>".Yii::t('app',$post->naim)."</option>"; 
     } 
    } 

} 
	
 


	
} 