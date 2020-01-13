# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# DB設計
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true|
|email|string|null: false,index: true,unique: true|
|password|string|null: false|

