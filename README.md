# README

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
## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| name           | string | null: false              |
| email              | string | null: false,unique: true |
| encrypted_password | string | null: false              |





### Association
- has_many :stocks
- has_many :mees



## mees テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | -------------------------------|
| stock_id        | integer    | null: false                    |
| user_id         | integer    | null: false                    |
| text            | text       | null: false                    |

### Association
- belongs_to :user
- belongs_to :stock,dependent: :destroy



##  stocksテーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| text           | string     | null: false                    |
| user_id        | integer    | null: false                    |



### Association
- belongs_to :user 
- has_many   :mees,dependent: :destroy
