## Dockerfile, docker-compose.yml

https://gist.github.com/hamadu/6e835225f5540cb68ae3b77c391cb038

## やること

```
# imageのinstanceをdocker-compose.ymlを参考にしてつくる。
$ docker-compose build 

# appっていうcontainer内でコマンドを実行する。
# docker-compose.yml にリンクがあるんでローカルに各種ディレクトリが生える
# ちなみに --rm すると実行後 container を削除してくれる。
$ docker-compose run --rm app rails new . --force --database=mysql --skip-test --skip-bundle

# Gemfileを修正（必要なgemとかを追加したり）後
$ docker-compose run --rm app bundle install

# DBとか作る
$ docker-compose run --rm app rails db:create

# imageのつくりなおし
$ docker-compose build

# run!(-dをつけるとデーモンになる)
$ docker-compose up -d

# 止める
$ docker-compose down

# console
$ docker-compose exec app rails c

# rake
$ docker-compose exec app rake db:migrate

```