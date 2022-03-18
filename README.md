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
| 機能<br>（大分類） | 機能<br>（小分類） | 目的 | 要件 | 所要時間の目安<br>（単位：時間[h]） |
| --- | --- | --- | --- | --- |
| 目標管理 | 投稿機能 | 目標を投稿する | ・フォームから投稿内容を入力できる。投稿ボタンから投稿できる。<br>・登録ボタンを押すと登録できる<br>・目標のタイトル、目標の詳細を見れる。<br>・ヘッダーにトップページへのリンクがある。 | 5h |
| --- | --- | --- | --- | --- |
|  | 一覧機能 | 投稿された一覧を表示する | ・ヘッダーにユーザー新規登録ページとログインページへ遷移するボタンがある。<br>・ログイン時には、ヘッダーにログアウトできるボタンがある。<br>・目標のタイトル、投稿者のユーザー名、詳細へのボタンが、目標ごとに一覧で見ることができる。 | 2h |
|  | 詳細機能 | 目標の詳細を表示する | ・目標のタイトル、目標の詳細、、達成目標日を見ることができる。<br>・目標の投稿者のみに削除ボタンが表示される。<br>・目標の投稿者のみに編集ボタンが表示される。<br>・目標の投稿者以外にお気に入りボタンが表示される。<br>・ヘッダーにトップページへのリンクがある。 | 3h |
|  | 編集機能 | 自身が投稿した目標を編集する | ・詳細ページから編集ボタンをクリックすると、編集フォームが表示される。<br>・何も変更せずに編集した場合も、投稿内容が消えることはない。<br>・目標のタイトル、目標の詳細、、達成目標日を編集することができる。<br>・ヘッダーにトップページへのリンクがある。<br>・投稿者以外が編集ページに遷移しようとすると、一覧ページにリダイレクトされる。 | 5h |
|  | 削除機能 | 自身が投稿した目標を削除する | ・詳細ページから削除ボタンをクリックすると、目標が削除される。<br>・削除ボタンをクリック後は、一覧ページに遷移する。<br>・投稿者以外が削除できないように、サーバーサイドで制御できている。 | 2h |
| ユーザー管理 | 新規登録機能 | 新規登録ができる<br>登録した内容でログインができる | ログイン・新規登録ができる | 3h |
|  | ログイン機能 |  |  |  |
|  | マイページ |  |  |  |
| 検索 | 検索機能 | 投稿内容を詳細まで絞って検索する | ・投稿は数点投稿されていることが前提<br>・複数の検索条件を指定する欄を儲ける<br>・条件に該当する投稿の検索結果のページで表示する | 5h |
| コメント管理 | 投稿機能 |  |  |  |
|  | 一覧機能 |  |  |  |
|  | 編集機能 |  |  |  |
|  | 削除機能 |  |  |  |
| フォロー管理 | 登録機能 |  |  |  |
|  | 削除機能 |  |  |  |
|  | 一覧機能 |  |  |  |
| お気に入り管理 | 登録機能 |  |  |  |
|  | 削除機能 |  |  |  |
|  | 一覧機能 |  |  |  |
|  | 一覧機能 |  |  |  |

 # ER図プレビュー
 ![プレビュー](/ER%E5%9B%B3.svg)
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

