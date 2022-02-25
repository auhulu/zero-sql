create database shop;

--  \lでデータベース一覧を表示
-- \c shopでshopに接続

create table shohin
(
    shohin_id char(4) not null,
    shohin_mei varchar(100) not null,
    shohin_bunrui varchar(32) not null,
    hanbai_tanka integer,
    shiire_tanka integer,
    torokubi date,
    primary key (shohin_id)
);

 alter table shohin add column shohin_mei_kana varchar(1000);

 alter table shohin drop column shohin_mei_kana;

 begin transaction;

 insert into shohin values ('0001','Tシャツ','衣服',1000,500,'2009-09-20');
 insert into shohin values ('0002','穴あけパンチ','事務用品',500,320,'2009-09-11');
 insert into shohin values ('0003','カッターシャツ','衣服',4000,2800,null);
 insert into shohin values ('0004','包丁','キッチン用品',3000,2800,'2009-09-20');
 insert into shohin values ('0005','圧力鍋','キッチン用品',6800,5000,'2009-01-15');
 insert into shohin values ('0006','フォーク','キッチン用品',500,null,'2009-09-20');
 insert into shohin values ('0007','おろしがね','キッチン用品',880,790,'2008-04-28');
 insert into shohin values ('0008','ボールペン','事務用品',100,null,'2009-11-11');

commit;