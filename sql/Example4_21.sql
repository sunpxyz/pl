BEGIN TRANSACTION;
	UPDATE Shohin
		SET hanbai_tanka = hanbai_tanka - 1000
	WHERE shohin_mei = '�˶�T��';
	
	UPDATE Shohin
		SET hanbai_tanka = hanbai_tanka + 1000
	WHERE shohin_mei = 'T����';
COMMIT;