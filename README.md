
## アプリケーション名

OSAKA WALKER

## アプリケーション概要

大阪に限定した衣食住に関するショップをシェアしたり、口コミを投稿することができる。

## URL

https://osakawalker.herokuapp.com/

## テスト用アカウント

- Basic認証ユーザー名：112277
- Basic認証パスワード：112277
- メールアドレス：test@test.com
- パスワード：test1227

## 利用方法

### ショップの投稿

1.トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う  
<img src="https://i.gyazo.com/488f232fbd13d64224aebfdd720e683f.png" width="500">  
2.NewShopボタンからショップの内容（画像・店ジャンル・ショップ名・説明・所在地）を入力し投稿する  
<img src="https://i.gyazo.com/99b78923570f798a38d510095ec5191e.png" width="500">  

<!-- ### 口コミを投稿する -->

<!-- 1.ショップ一覧ページのショップ名をクリックし、ショップ詳細ページに移る   -->
<!-- 2.ショップ詳細ページの下部分にある口コミ投稿ボタンから口コミ内容を入力し投稿する -->

## アプリケーションを作成した背景

普段休日に家族や友人などとランチに行く際、場所に悩むことが多かった。  
これまではインターネットやインスタグラム等のSNSで検索してお店を探していたが、同じお店が複数ヒットしたり口コミがまとまって表示されないことから、見つけるまでに時間がかかっていた。  
ランチ以外で洋服や家具を探す際にも同様に悩むことが多く、友人に聞くと同じような悩みがあることを知り、一定数同じ悩みを持つ人がいるのではないかと仮説を立てた。  
家族時間や友人とのランチ、デートなどお洒落なお店に行きたいと思った際に、悩む時間を少しでも軽減できればと思い開発することにした。

## 洗い出した要件

[要件定義シート](https://docs.google.com/spreadsheets/d/1zs7lwFkzWQT5GHFKyq5ZmdqEJGZRQ1bsxOiiUoPGVPc/edit#gid=982722306)

## 実装した機能についての画像やGIFおよびその説明

<img src="https://i.gyazo.com/e53897564819b5cce634474525ee6e9d.gif" width="500">  
<img src="https://i.gyazo.com/4c2876aa5b502fdee4a83558b89b7f4d.gif" width="500">

## 実装予定の機能

現在評価機能を実装中。  
その後は地域検索機能やプロフィール機能を実装予定。

## データベース設計

![ER図](osakawalker_er.drawio.svg)

## 画面遷移図

![画面遷移図](osakawalker_transition.drawio.svg)

## 開発環境

- フロントエンド：HTML・CSS・Javascript
- バックエンド：Ruby・Ruby on Rails
- インフラ：heroku・AWS
- テスト：Rspec
- テキストエディタ：Visual Studio Code
- タスク管理：Github