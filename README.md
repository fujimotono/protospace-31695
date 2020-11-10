# テーブル設計

## users テーブル

| Column     | Type   | Options   |
| ---------- | ------ | --------- |
| email      | string | NOT NILL  |
| password   | string | NOT NILL  |
| name       | string | NOT NILL  |
| profile    | text   | NOT NILL  |
| occupation | text   | NOT NILL  |
| position   | text   | NOT NILL  |

### Association

- has_many :prototype_users
- has_many :prototypes, through: prototype_users
- has_many :comments


## prototypes テーブル

| Column     | Type       | Options  |
| ---------- | ---------- | -------- |
| title      | string     | NOT NILL |
| catch_copy | text       | NOT NILL |
| concept    | text       | NOT NILL |
| image      | ActiveStorageで実装    |
| user       | references |          |

### Association

- has_many :prototype_users
- has_many :users, through: prototype_users
- has_many :comments

## comments テーブル

| Column    | Type       | Options  |
| --------- | ---------- | -------- |
| text      | text       | NOT NILL |
| user      | references |          |
| prototype | references |          |

### Association

  belongs_to :user
  belongs_to :prototypes