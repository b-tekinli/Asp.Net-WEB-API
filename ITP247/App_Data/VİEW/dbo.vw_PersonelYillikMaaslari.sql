-- vw_PersonelYillikMaaslari Sorgusunu Olusturma

CREATE VIEW vw_PersonelYillikMaaslari AS

Select Pers_Isim AS Personel,Maas_Yili AS Yil, Sum(Maas_Toplam) AS Toplam 
From vw_PersonelAylikMaaslari
GROUP BY Pers_Isim,Maas_Yili
GO
