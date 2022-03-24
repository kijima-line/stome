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



# アプリケーション名
- 　「Stome」

## アプリケーション概要
- オリジナルアプリケーションとして、自身のルーティンを共有をする投稿サイトを開発しました。
主な機能は、投稿機能、検索機能、ルーティン登録機能です。

トップページにアクセスすると、最新の投稿が表示されています。詳細をクリックすると、各ユーザーの投稿内容を閲覧することができます。

ユーザー登録をすると、自分のルーティン投稿をすることができます。

## 本番環境
- http://54.168.251.225/
- （個人情報等は入力しないで下さい）


# 作成背景（意図）
- ユーザーの持っているルーティンを共有できないかと考えチーム内で好評多数だったため作成しました。
完成までは程遠いですが暖かい目で見守ってください。

## 工夫したポイント
 - チーム内で実際に利用してもらい、ユーザーヒアリングを行いながら改善を行っています。
 - やってみたい機能実装（お気に入り機能）
## 使用技術
### バックエンド
- Ruby,Ruby on Rails
### フロントエンド
- Sass,JavaScript,JQuery,Ajax
### データベース
- mysql
### インフラ
- AWS,Heroku
### webサーバ(本番環境)
- ngixs
### アプリケーションサーバ（本番環境)
- unicon
### ソースコード管理
- Github,Gitdesktop
### テスト
- Rspec
### エディタ
- VSCode
# DEMO
## トップページ
[![Image from Gyazo](https://i.gyazo.com/cac2c651084811622f4d7f7c2c014ebd.png)](https://gyazo.com/cac2c651084811622f4d7f7c2c014ebd)

## 新規作成画面
[![Image from Gyazo](https://i.gyazo.com/9818d1fc64a1894794c4133477840d11.png)](https://gyazo.com/9818d1fc64a1894794c4133477840d11)

## 詳細表示
[![Image from Gyazo](https://i.gyazo.com/4d10fb11b8fbaf1ffc771a76e6aad668.gif)](https://gyazo.com/4d10fb11b8fbaf1ffc771a76e6aad668)

## テスト用アカウント
- メールアドレス： test@test.com
- パスワード : 22222a

## 利用方法
- ユーザー：新規登録後、「作成ボタン」にて、自身のルーティンのタイトルを作成します。
- タイトルが作成されたらルーティンの登録で時間と内容を入力します。
- 登録完了ボタンで内容がトップページへ反映され遷移します。





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
 ![プレビュー](/er.svg)


## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| name           | string | null: false              |
| email              | string | null: false,unique: true |
| encrypted_password | string | null: false              |


### Association
 - has_many :stocks
 - has_many :likes, dependent: :destroy
 - has_many :mees, dependent: :destroy

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
 - has_many :likes,dependent: :destroy
 - has_many :mees, dependent: :destroy

##  likesテーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| stock_id       | integer    | null: false                    |
| user_id        | integer    | null: false                    |



### Association
- belongs_to :stock_id 
- belongs_to :user
