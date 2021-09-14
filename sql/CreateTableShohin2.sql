CREATE TABLE Shohin2
(shohin_id      CHAR(4)       NOT NULL,
 shohin_mei     VARCHAR(100)  NOT NULL,
 shohin_bunrui  VARCHAR(32)   NOT NULL,
 hanbai_tanka   INTEGER       ,
 shiire_tanka   INTEGER       ,
 torokubi       DATE          ,
 PRIMARY KEY (shohin_id));
 
BEGIN TRANSACTION;
INSERT INTO Shohin2 VALUES ('0001', 'T����', '�·�', 1000, 500, '2008-09-20');
INSERT INTO Shohin2 VALUES ('0002', '�����', '�칫��Ʒ', 500, 320, '2009-09-11');
INSERT INTO Shohin2 VALUES ('0003', '�˶�T��', '�·�', 4000, 2800, NULL);
INSERT INTO Shohin2 VALUES ('0009', '����', '�·�', 800, 500, NULL);
INSERT INTO Shohin2 VALUES ('0010', 'ˮ��', '�����þ�', 1000, 1700, '2009-09-20');
COMMIT;