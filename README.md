#freemarket_sample_65f
「メルカリ」のクローンサイト

##Description

##Features



## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null:  false|
|encrypted_password|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birthday_year_id|integer|null: false|
|birthday_month_id|integer|null: false|
|birthday_day_id|integer|null: false|
|phone_num|string|null: false|
|authentication_num|integer|null: false|
|content|text||
|address|references|null: false, foreign_key: true|
|telephone|string||

### Association
-belongs_to_active_hash :birth_year
-belongs_to_active_hash :birth_month
-belongs_to_active_hash :birth_day
-belongs_to_active_hash :prefecture
-has_many :products
-has_one :card
-has_one :address

##Addressテーブル
|Column|Type|Options|
|------|----|———|
|zip_code1|string|null: false|
|prefecture_id|integer|null: false|
|city|string|null: false|
|address1|string||
|address2|string||

###Association
-belongs_to :user

##Productsテーブル
|Column|Type|Options|
|------|----|———|
|user|references|null: false, foreign_key: true|
|name|string|null: false|
|description|text||
|category|references|null: false, foreign_key: true|
|image|references|foreign_key: true|
|condition|references|null: false, foreign_key: true|
|size|references|null: false, foreign_key: true|
|brand|string||
|delivery_charge|references|null: false, foreign_key: true|
|delivery_way|references|null: false, foreign_key: true|
|prefecture|references|null: false, foreign_key: true|
|delivery_days|references|null: false, foreign_key: true|
|price|integer|null: false|
|status|references|null: false, foreign_key: true|

###Association
-belongs_to_active_hash :category
-belongs_to_active_hash :condition
-belongs_to_active_hash :size
-belongs_to_active_hash :delivery_charge
-belongs_to_active_hash :prefecture
-belongs_to_active_hash :delivery_days
-belongs_to_active_hash :delivery_way
-belongs_to_active_hash :status
-has_many_attached :images
-belongs_to :user
-has_many :images
-add_index :products, :name

##Imagesテーブル
|Column|Type|Options|
|------|----|———|
|text|text|null: false|
|product_id|references|foreign_key: true|

###Association
-belongs_to :product

##Cardテーブル
|Column|Type|Options|
|------|----|———|
|user|references|null: false, foreign_key: true|
|customer_id|string||
|card_id|string||

###Association
-belongs_to :user

##Categoryテーブル
|Column|Type|Options|
|------|----|———|
|name|string|null: false|
|sub|integer||
|sub_sub|integer||
|size|integer||
|bland|integer||

###Association
-has_many :products

##Conditionテーブル
|Column|Type|Options|
|------|----|———|
|value|string|null: false|

###Association
-has_many :products

##Sizeテーブル
|Column|Type|Options|
|------|----|———|
|value|string|null: false|
|group|integer||

###Association
-has_many :products

##DeliveryChargeテーブル
|Column|Type|Options|
|------|----|———|
|value|string|null: false|

###Association
-has_many :products

##DeliveryDaysテーブル
|Column|Type|Options|
|------|----|———|
|value|string|null: false|

###Association
-has_many :products

##DeliveryWayテーブル
|Column|Type|Options|
|------|----|———|
|value|string|null: false|
|charge|integer||

###Association
-has_many :products

##Prefectureテーブル
|Column|Type|Options|
|------|----|———|
|name|string|null :false|

###Association
-has_many :products

##statusテーブル
|Column|Type|Options|
|------|----|———|
|name|string|null: false|

###Association
-has_many :products

##Walletsテーブル
|Column|Type|Options|
|------|----|———|
|user_id|references|foreign_key: true|
|customer_id|references|foreign_key: true|
|card_id|references|foreign_key: true|

###Association

-belongs_to :user