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

# 目指した課題解決
- ユーザーの持っているルーティンを共有できないかと考えチーム内で好評多数だったため作成しました。
完成までは程遠いですが暖かい目で見守ってください。


# アプリケーション名
-「Stome」

## アプリケーション概要
- ユーザーの持っているルーティンを共有できる投稿アプリケーションです。

## URL
- https://stome.herokuapp.com/
- （個人情報等は入力しないで下さい）

### テスト用アカウント
- メールアドレス： ff@g
- パスワード : aaaaaa

## 利用方法
- ユーザー：新規登録後、「作成ボタン」にて、自身のルーティンのタイトルを作成します。
- タイトルが作成されたらルーティンの登録で時間と内容を入力します。
- 登録ご完了ボタンで内容がトップページへ反映され遷移します。





## 現状の実装内容
| 機能 | 機能<br>（小分類） | 目的 | 要件 | 所要時間の目安 |
| --- | --- | --- | --- | --- |
| 目標管理 | 投稿機能 | 目標を投稿する | ・作成ボタンを押すとタイトルを登録できる。TOPページから作成できる。<br>・登録ボタンを押すと登録できる |  |
|  | 一覧機能 | 投稿された一覧を表示する | ・ヘッダーにユーザー新規登録ページとログインページへ遷移するボタンがある。<br>・ログイン時には、ヘッダーにログアウトできるボタンがある。<br>・目標のタイトル、投稿者のユーザー名、詳細へのボタンが、目標ごとに一覧で見ることができる。 |  |
|  | 詳細機能 | 目標の詳細を表示する | ・目標のユーザーネームで目標の詳細を見ることができる。<br>・目標の追加のページで投稿者のみに削除ボタンが表示される。<br>・目標の追加のページのみに編集ボタンがと削除ボタンが表示される。<br>・ヘッダーにトップページへのリンクがある。 |  |
|  | 編集機能 | 自身が投稿した目標を編集する | ・ログイン済みのユーザーページからボタンをクリックすると、編集・削除が表示される。<br>・タイトルは何も変更せずに編集した場合も、内容が消えることはない。<br>・目標のタイトル、目標の詳細を編集することができる。<br>・ヘッダーにトップページへのリンクがある。<br>・投稿者以外がルーティン編集ページに遷移しようとすると、TOPページにリダイレクトされる。 |  |
|  | 削除機能 | 自身が投稿した目標を削除する | ・詳細ページから削除ボタンをクリックすると、目標が削除される。<br>・削除ボタンをクリック後は、一覧ページに遷移する。<br>・投稿者以外が削除できないように、サーバーサイドで制御できている。 |  |
| ユーザー管理 | 新規登録機能 | 新規登録ができる<br>登録した内容でログインができる | ログイン・新規登録ができる |  |
|  | ログイン機能 |  |  |  |
| 検索 | 検索機能 | 投稿タイトルで検索する | ・投稿は数点投稿されていることが前提<br>・条件に該当する投稿の検索結果のページで表示する |  |



## 今後実装予定
| 機能<br>（大分類） | 機能<br>（小分類） | 目的 | 要件 | 所要時間の目安<br>（単位：時間[h]） |
| --- | --- | --- | --- | --- |
| コメント管理 | 投稿機能 | コメントができるようになる<br>投稿したコメンの表示<br>投稿したコメントの削除 |  | 5h |
|  | 削除機能 |  |  |  |
| フォロー管理 | 登録機能 | フォローできるようになる |  | 5h |
|  | 削除機能 | 追加したフォローを削除できるようになる |  |  |
|  | 一覧機能 | フォローしたユーザーを表示する |  |  |
| お気に入り管理 | 登録機能 | お気に入り登録ができる |  | 5h |
|  | 削除機能 | お気に入りした投稿を削除する |  |  |
|  | 一覧機能 | 追加したお気に入りを見ることができる |  |  |
|  |  |  |  |  |
| ユーザー管理 | マイページ | 投稿した内容を表示する |  | 3h |
|  | アイコン | アイコンを表示させる |  |  |





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
- has_many :likes



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
- has_many   :likes,dependent: :destroy


##   likesテーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| stock_id       | integer    | null: false                    |
| user_id        | integer    | null: false                    |



### Association
- belongs_to :user
- belongs_to :stock
