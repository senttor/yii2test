<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "user_adress".
 *
 * @property int $id
 * @property int $user_id
 * @property string $street
 * @property int $country_id
 * @property string $city
 * @property int $house
 * @property int $office
 * @property int $zip
 *
 * @property Users $user
 */
class UserAdress extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user_adress';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['zip','street','city','country_id'], 'required'],
            [['zip'], 'integer' ],
            [['zip'], 'match' ,'pattern'=> '/^[0-9]*$/' ],
            [['user_id'], 'exist',
                'skipOnError' => true,
                'targetClass' => Users::className(),
                'targetAttribute' => ['user_id' => 'id']]
        ];
       /* return [
            [['user_id'], 'required'],
            [['user_id', 'country_id', 'house', 'office', 'zip'], 'integer'],
            [['street'], 'string', 'max' => 100],
            [['city'], 'string', 'max' => 50],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['user_id' => 'id']],
        ];*/
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'street' => 'Street',
            'country_id' => 'Country ID',
            'city' => 'City',
            'house' => 'House',
            'office' => 'Office',
            'zip' => 'Zip',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(Users::className(), ['id' => 'user_id']);
    }
}
