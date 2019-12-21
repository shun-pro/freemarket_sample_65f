#freemarket_sample_65f
「メルカリ」のクローンサイト

##Description

##Features



## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null:  false, unique: true|
|encrypted_password|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birthday_year_id|integer|null: false|
|birthday_month_id|integer|null: false|
|birthday_day_id|integer|null: false|
|phone_num|integer|null: false, unique: true|
|telephone|integer||

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
|user_id|integer||
|zip_code1|string|null: false|
|prefecture_id|integer|null: false|
|city|string|null: false|
|address|string|null: false|
|address_building|string||

###Association
-belongs_to :user

##Productsテーブル
|Column|Type|Options|
|------|----|———|
|user|references|null: false, foreign_key: true|
|name|string|null: false|
|description|text||
|category|references|null: false, foreign_key: true|
|condition|references|null: false, foreign_key: true|
|size|references|null: false, foreign_key: true|
|brand|string||
|delivery_charge|references|null: false, foreign_key: true|
|delivery_way|references|null: false, foreign_key: true|
|prefecture|references|null: false, foreign_key: true|
|delivery_days|references|null: false, foreign_key: true|
|price|integer|null: false|
|status|references|null: false, foreign_key: true|
|condition|string|null: false|
|deliveryWay_charge|integer||
|deliveryWay_value|string|null: false|
|status|string|null: false|

###Association
-belongs_to_active_hash :category
-belongs_to_active_hash :condition
-belongs_to_active_hash :size
-belongs_to_active_hash :delivery_charge
-belongs_to_active_hash :prefecture
-belongs_to_active_hash :delivery_days
-belongs_to_active_hash :delivery_way
-belongs_to_enum :status
-belongs_to :user
-has_many :images
-add_index :products, :name
-belongs_to_enum :condition
-belongs_to_enum :DeliveryCharge
-belongs_to_enum :DeliveryDays
-belongs_to_enum :DeliveryWay

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

###Association
-has_many :products

##Sizeテーブル
|Column|Type|Options|
|------|----|———|
|value|string|null: false|

###Association
-has_many :products



###Association
-has_many :products

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