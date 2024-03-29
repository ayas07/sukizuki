# アプリケーション名
SukiZuki

# アプリケーション概要
「好きなもの」に関する画像やテキストを投稿したり、他のユーザーの投稿を見たりすることで、互いの「好き」の違いを楽しむことができる

# URL
https://sukizuki.herokuapp.com/

# テスト用アカウント
・Basic認証パスワード：sgyms

・Basic認証ID：24915

・メールアドレス：user@test.com

・パスワード：user01

# 利用方法
## 新規投稿
1.トップページ（一覧ページ）のヘッダーからユーザー新規登録またはログインを行う

2.新規投稿ボタンから、画像（任意）、テキスト、「気持ち」「色」カテゴリーを入力し投稿する

## 投稿を見る
一覧ページで全ての投稿を見ることができるほか、サイドバーの「『気持ち』で投稿を探す」や「『色』で投稿を探す」の各カテゴリーをクリックすると、カテゴリーに紐付いた投稿を見ることができる

# アプリケーションを作成した背景
検索したり趣味に関するコミュニティに参加したりすることで、自分の「好き」を深掘りしやすい時代である一方、自分とは異なる嗜好を持つ人の「好き」に触れられる場が少ないと常々感じていた。

そこで、より多くの人に多様な「好き」に触れる楽しさを感じてもらうべく、「何かしら好きなものがある」人が集まり、各々好きなものについて投稿して互いの違いを楽しめるアプリケーションを開発することにした。

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1NficasSUkWgyKYWJY-o0ZlaYG4weyAzzA3qEaLEU7s0/edit#gid=982722306)

# 実装のポイント・工夫した点
[![Image from Gyazo](https://i.gyazo.com/f32f71131bbfa5a2217f9303c821c374.jpg)](https://gyazo.com/f32f71131bbfa5a2217f9303c821c374)

「好き」の違いを楽しんでもらうための工夫として、投稿時に選択するカテゴリーは好きなものの内容（アイドル、動物など）ではなく、好きなものに対する「気持ち」（最高、尊いなど）と気持ちに合った「色」にした。

そうすることで、各カテゴリーに多様な内容の投稿が紐付き、投稿を見るユーザーがどのカテゴリーのリンクをクリックしても自分と異なる「好き」に触れられるようにした。

またそれに伴い、最終課題で学んだActiveHashを活用したカテゴリー別の一覧表示や、ヘルパーメソッドを用いた投稿ごとの枠の色表示など、初めて取り組む実装にも挑戦した。

## 投稿時の挙動
[![Image from Gyazo](https://i.gyazo.com/f69ea76caf80f8e6879c023541bb2ecc.gif)](https://gyazo.com/f69ea76caf80f8e6879c023541bb2ecc)

# 実装予定の機能
今後はマイページ機能やコメント機能、投稿検索機能を実装予定。また、スマートフォンやタブレットなど小さな端末でも見やすく実装できるよう学習を進めているところ。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/9d22bb56bac2708cf1223a22ac8c4587.png)](https://gyazo.com/9d22bb56bac2708cf1223a22ac8c4587)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/ec9887e289c58af0b577647131ec9fc2.png)](https://gyazo.com/ec9887e289c58af0b577647131ec9fc2)

# 開発環境
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

# ローカルでの動作方法
以下のコマンドを順に実行。

% git clone https://github.com/ayas07/sukizuki.git

% cd sukizuki

% bundle install

% yarn install





















