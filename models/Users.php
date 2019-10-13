<?php

namespace app\models;

use yii\base\Model;
use yii\db\ActiveRecord;
use app\models\UserAdress;
use yii\validators\Validator;
use Yii;

/**
 * This is the model class for table "users".
 *
 * @property int $id
 * @property string $first_name
 * @property string $last_name
 * @property string $login
 * @property string $password
 * @property string $mail
 * @property string $gender
 * @property string $created
 *
 * @property UserAdress[] $userAdresses
 */
class Users extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'users';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['login', 'password', 'gender'], 'required'],
            [['gender'], 'string'],
            [['created'], 'safe'],
            [['first_name', 'last_name', 'login', 'mail'], 'string', 'max' => 50],
            [['password'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'first_name' => 'First Name',
            'last_name' => 'Last Name',
            'login' => 'Login',
            'password' => 'Password',
            'mail' => 'Mail',
            'gender' => 'Gender',
            'created' => 'Created',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUserAdresses()
    {
        return $this->hasMany(UserAdress::className(), ['user_id' => 'id']);
    }
}
