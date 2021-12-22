CREATE VIEW [dbo].[vw_PersonelAylikMaaslari]
AS
SELECT        dbo.tbl_Personeller.Pers_ID, dbo.tbl_Personeller.Pers_Isim, dbo.tbl_PersonelMaaslari.Maas_Tutari + dbo.tbl_PersonelMaaslari.Maas_Komisyon AS MaasToplam, dbo.tbl_Kategoriler.Ay_Adi, 
                         dbo.tbl_PersonelMaaslari.Maas_Tutari, dbo.tbl_PersonelMaaslari.Maas_Komisyon, dbo.tbl_PersonelMaaslari.Maas_Yili, tbl_Kategoriler_1.Unvan
FROM            dbo.tbl_Kategoriler INNER JOIN
                         dbo.tbl_Bolumler INNER JOIN
                         dbo.tbl_Personeller ON dbo.tbl_Bolumler.Bolum_ID = dbo.tbl_Personeller.Bolum_ID INNER JOIN
                         dbo.tbl_PersonelMaaslari ON dbo.tbl_Personeller.Pers_ID = dbo.tbl_PersonelMaaslari.Pers_ID ON dbo.tbl_Kategoriler.Kategori_ID = dbo.tbl_PersonelMaaslari.Ay_ID INNER JOIN
                         dbo.tbl_Kategoriler AS tbl_Kategoriler_1 ON dbo.tbl_Personeller.Unvan_ID = tbl_Kategoriler_1.Kategori_ID
GO