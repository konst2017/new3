<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
         'css/bootstrap.min.css',
	
		
       'css/animate.css',
		
		
       'css/style.css',
	
       'css/prettyPhoto.css',

    ];
    public $js = [
     'js/jquery-1.10.2.min.js',
	'js/bootstrap.js',
	'js/waypoints.min.js',
	'js/jquery.scrollto.min.js',
	'js/jquery.localscroll.min.js',
	'js/jquery.prettyPhoto.js',
	'js/scripts.js',

    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
