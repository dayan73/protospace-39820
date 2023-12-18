# README
groups_usersテーブル

| Column             | Type      | Options                   |
| ------------------ | ----------| --------------------------|
| email              | string    | NOT NULL,unique: true     |
| encrypted_password | string    | NOT NULL                  |
| name               | string    | NOT NULL                  |
| profile            | text      | NOT NULL                  |
| occupation         | text      | NOT NULL                  |
| position           | text      | NOT NULL                  |


Prototypesテーブル

| Column             | Type      | Options                   |
| ------------------ | ----------| --------------------------|
| title              | string    | NOT NULL                  |
| catch_copy         | text      | NOT NULL                  |
| concept            | text      | NOT NULL                  |
| user               | refarences| NOT NULL,foreign_key: true|


Commentsテーブル

| Column             | Type      | Options                   |
| ------------------ | ----------| ------------------------- |
| content            | text      | NOT NULL                  |
| prottype           | refarences| NOT NULL foreign_key: true|
| user               | refarences| NOT NULL foreign_key: true|