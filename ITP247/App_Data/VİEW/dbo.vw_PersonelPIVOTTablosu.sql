--vw_PersonelPIVOTTablosu Sorgusunu Olusturma
-- Pivot Tablo Olusturma. SELECT kismi tek basina, sonra da PIVOT'la birlikte calistirinca aradaki fark gorulebilir.

CREATE VIEW vw_PersonelPIVOTTablosu AS

SELECT * FROM (SELECT Pers_Adi, Pers_Ili, COUNT(Pers_ID) AS ElemanSayisi FROM tbl_Personeller
GROUP BY Pers_Adi, Pers_Ili) AS ElemanSayisi
PIVOT
(COUNT(ElemanSayisi) FOR Pers_Ili IN ([Bursa], [Ankara], [İstanbul],[İzmir],[Zonguldak])) AS P
GO
