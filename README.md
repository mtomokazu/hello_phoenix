# HelloPhoenix

[![Build Status](https://travis-ci.org/mtomokazu/hello_phoenix.svg?branch=master)](https://travis-ci.org/mtomokazu/hello_phoenix)

## 環境

Erlang, Elixir, Mix

    $ erl -version
    Erlang (SMP,ASYNC_THREADS,HIPE) (BEAM) emulator version 7.2
    $ elixir --version
    Erlang/OTP 18 [erts-7.2] [source-e6dd627] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false]

    Elixir 1.2.0
    $ mix --version
    Mix 1.2.0
	$

Node.js

	$ node --version
	v5.6.0
	$ npm --version
	3.6.0
	$

## 作成

### 参考ページ

以下の手順を実施する．

  * 超高速なJSON APIをElixirフレームワークのPhoenixでビルドしてテストしよう
    http://postd.cc/testing-a-phoenix-elixir-json-api/
  * Build and test a blazing fast JSON API with Phoenix, an Elixir framework
    https://robots.thoughtbot.com/testing-a-phoenix-elixir-json-api

### 手順

mix コマンドでプロジェクトを作成．

    $ mix phoenix.new hello_phoenix --database mysql
    $ cd hello_phoenix

コントローラのテストを作成．このテストが通るように実装していく．

    $ vi test/controllers/contact_controller_test.exs

MySQL にデータベースを作成した上で，データベース名・ユーザー名・パスワードを設定．

    $ vi config/dev.exs
    $ vi config/test.exs

データベースにテーブルを作成．

    $ mix ecto.create

モデルを作成．

    $ vi web/models/contact.ex

データベース・マイグレーションを作成・実行．

    $ mix ecto.gen.migration create_contacts
    $ vi priv/repo/migrations/20160212052747_create_contacts.exs
    $ mix ecto.migrate

ルータの設定．

    $ vi web/router.ex

コントローラの作成．

    $ vi web/controllers/contact_controller.ex

ビューの作成．

    $ vi web/views/contact_view.ex

テスト実行．

    $ mix test
    .....

    Finished in 0.2 seconds (0.1s on load, 0.1s on tests)
    5 tests, 0 failures

    Randomized with seed 537334
    $

ブラウザからのアクセス．

    $ mix phoenix.server

http://localhost:4000/api/contacts


## Phoenix application

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
