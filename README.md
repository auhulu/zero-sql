# ゼロからはじめるデータベース操作
## 環境構築
```bash
$ sudo apt update
$ sudo apt install postgresql postgresql-contrib
# psqlコマンドをpostgresアカウントとして実行
$ sudo -u postgres psql
```
```sql
postgres=# \c データベース名
postgres=# \q
```
## メモ
- 改行アリでもsql的にはおｋ
- 複数行のsqlはコピペ1行ごとの遅延実行で