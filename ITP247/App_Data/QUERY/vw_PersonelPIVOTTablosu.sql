CREATE VIEW [dbo].[vw_PersonelPIVOTTablosu] AS
SELECT * FROM (SELECT Pers_Adi, Pers_Ili, COUNT(Pers_ID) AS ElemanSayisi FROM tbl_Personeller
GROUP BY Pers_Adi, Pers_Ili) AS ElemanSayisi
PIVOT
(COUNT(ElemanSayisi) FOR Pers_Ili IN ([Bursa], [Ankara], [�stanbul],[�zmir],[Zonguldak])) AS P
GO