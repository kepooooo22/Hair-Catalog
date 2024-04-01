# README

## adminsテーブル

|Column          |Type      |Options          |
|----------------|----------|-----------------|
|email           |string   |null: false        |
|encrypted_password |string|null: false|



## customersテーブル

|Column             |Type  |Options    |
|-------------------|------|-----------|
|name               |string|null: false|
|email              |string|null: false|
|encrypted_password |string|null: false|
|status             |integer|null: false|


### Association
has_many: cart_items
has_many: orders




## productsテーブル

|Column          |Type      |Options          |
|----------------|----------|-----------------|
|name            |string    |null: false      |
|explanation     |text      |null: false      |
|price           |integer   |null: false      |
|stock          |boolean   |null: false      |


### Association
has_many: order_items
has_many: cart_items




## order_detailsテーブル

|Column          |Type     |Options            |
|----------------|---------|-------------------|
|price           |integer   |null: false      |
|quantity        |integer  |null: false        |
|product         |references|null: false, foreign_key: true  |
|order           |references|null: false, foreign_key: true  |

### Association
belongs_to: order
belongs_to: product




## ordersテーブル

|Column          |Type        |Options                         |
|----------------|------------|--------------------------------|
|name            |string   |null: false        |
|postal_code     |string   |null: false        |
|prefecture      |text     |null: false        |
|address1         |text     |null: false        |
|address2         |text     |null: false        |
|postage         |integer  |null: false        |
|price           |integer  |null: false        |
|billing_amount  |integer  |null: false        |
|status          |integer  |null: false        |
|customer        |references  |null: false, foreign_key: true  |


### Association
has_many: order_details
belongs_to: user




## cart_itemsテーブル

|Column          |Type        |Options                         |
|----------------|------------|--------------------------------|
|quantity        |integer     |null: false        |
|customer        |references  |null: false, foreign_key: true  |
|product         |references  |null: false, foreign_key: true  |



### Association
belongs_to: customer
belongs_to: product








This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
