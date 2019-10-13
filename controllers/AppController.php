<?php


namespace app\controllers;

use yii\web\Controller;

class AppController extends Controller
{
    public function dd($arr)
    {
        echo "<pre>".var_dump($arr)."</pre>";
        die();
    }

    public function dp($arr)
    {
        echo "<pre>".print_r($arr, true)."</pre>";
    }
}