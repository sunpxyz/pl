CREATE TABLE Shohin
(shohin_id     CHAR(4)      NOT NULL,
 shohin_mei    VARCHAR(100) NOT NULL,
 shohin_bunrui VARCHAR(32)  NOT NULL,
 hanbai_tanka  INTEGER ,
 shiire_tanka  INTEGER ,
 torokubi      DATE ,
 PRIMARY KEY (shohin_id));

INSERT INTO Shohin VALUES ('0001', 'T��' ,'�·�', 1000, 500, '2009-09-20');
INSERT INTO Shohin VALUES ('0002', '�����', '�칫��Ʒ', 500, 320, '2009-09-11');
INSERT INTO Shohin VALUES ('0003', '�˶�T��', '�·�', 4000, 2800, NULL);
INSERT INTO Shohin VALUES ('0004', '�˵�', '�����þ�', 3000, 2800, '2009-09-20');
INSERT INTO Shohin VALUES ('0005', '��ѹ��', '�����þ�', 6800, 5000, '2009-01-15');
INSERT INTO Shohin VALUES ('0006', '����', '�����þ�', 500, NULL, '2009-09-20');
INSERT INTO Shohin VALUES ('0007', '���˰�', '�����þ�', 880, 790, '2008-04-28');
INSERT INTO Shohin VALUES ('0008', 'Բ���', '�칫��Ʒ', 100, NULL, '2009-11-11');

COMMIT;