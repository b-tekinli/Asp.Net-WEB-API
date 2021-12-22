CREATE VIEW [dbo].[vw_PersonelYillikMaaslari]
AS
SELECT        Pers_Isim AS Personel, Maas_Yili AS Yil, SUM(MaasToplam) AS Toplam
FROM            dbo.vw_PersonelAylikMaaslari
GROUP BY Pers_Isim, Maas_Yili
GO