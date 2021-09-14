CREATE TABLE TenpoShohin
(tenpo_id   CHAR(4)  		NOT NULL,
 tenpomei	VARCHAR(200)	NOT NULL,
 shohin_id	CHAR(4)			NOT NULL,
 suryo		INTEGER			NOT NULL,
 PRIMARY KEY (tenpo_id, shohin_id));
 
BEGIN TRANSACTION;

INSERT INTO TenpoShohin VALUES ('000A', '����', '0001', 30);
INSERT INTO TenpoShohin VALUES ('000A', '����', '0002', 50);
INSERT INTO TenpoShohin VALUES ('000A', '����', '0003', 15);
INSERT INTO TenpoShohin VALUES ('000B', '������', '0002', 30);
INSERT INTO TenpoShohin VALUES ('000B', '������', '0003', 120);
INSERT INTO TenpoShohin VALUES ('000B', '������', '0004', 20);
INSERT INTO TenpoShohin VALUES ('000B', '������', '0006', 10);
INSERT INTO TenpoShohin VALUES ('000B', '������', '0007', 40);
INSERT INTO TenpoShohin VALUES ('000C', '����', '0003', 20);
INSERT INTO TenpoShohin VALUES ('000C', '����', '0004', 50);
INSERT INTO TenpoShohin VALUES ('000C', '����', '0006', 90);
INSERT INTO TenpoShohin VALUES ('000C', '����', '0007', 70);
INSERT INTO TenpoShohin VALUES ('000D', '����', '0001', 100);

COMMIT;