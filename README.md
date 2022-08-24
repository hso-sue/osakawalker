# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| user_name          | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| last_name          | string  | null: false               |
| last_name_kana     | string  | null: false               |
| first_name         | string  | null: false               |
| first_name_kana    | string  | null: false               |
| birthday           | date    | null: false               |

### Association

- has_many :shops
- has_many :favorites

## shops テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| shop_name          | string     | null: false                    |
| introduction       | text       | null: false                    |
| shop_category_id   | integer    | null: false                    |
| shop_prefecture_id | integer    | null: false                    |
| shop_address       | string     | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :favorite

## favorites テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| shop   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :shop