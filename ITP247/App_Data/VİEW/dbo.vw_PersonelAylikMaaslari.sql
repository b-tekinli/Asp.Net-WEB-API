--vw_PersonelAylikMaaslari Sorgusunu Olusturma

CREATE VIEW vw_PersonelAylikMaaslari AS

Select 
tbl_Personeller.Pers_ID, tbl_Personeller.Pers_Isim,tbl_PersonelMaaslari.Maas_Toplam, tbl_Kategoriler.Ay_Adi, 
tbl_PersonelMaaslari.Maas_Tutari, tbl_PersonelMaaslari.Maas_Komisyon, tbl_PersonelMaaslari.Maas_Yili, tbl_Kategoriler.Unvan

From 
tbl_Kategoriler INNER JOIN tbl_Bolumler INNER JOIN tbl_Personeller ON tbl_Bolumler.Bolum_ID = tbl_Personeller.Bolum_ID INNER JOIN tbl_PersonelMaaslari ON tbl_Personeller.Pers_ID = tbl_PersonelMaaslari.Pers_ID ON tbl_Kategoriler.Kategori_ID=tbl_PersonelMaaslari.Ay_ID
GO
