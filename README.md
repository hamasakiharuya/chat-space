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

## users_groupsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|passward|string|null: false, unique: true|
|e_mail|string|null: false, unique: true|

### Association
- has_many :users_groups
- has_many :groups, through: :users_groups
- has_many :messages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|chat_name|string|null: false|

### Association
- has_many :users_groups
- has_many :users, through: :users_groups
- has_many :messages

## messeagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string| |
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group
