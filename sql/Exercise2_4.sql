-- 2016-02-28 SUN
-- Exercise02_04

SELECT shohin_mei, shohin_bunrui, hanbai_tanka * 0.9 AS rieki
FROM Shohin
WHERE hanbai_tanka * 0.9 - shiire_tanka > 100
AND (shohin_bunrui = '�칫��Ʒ' OR shohin_bunrui = '�����þ�');
