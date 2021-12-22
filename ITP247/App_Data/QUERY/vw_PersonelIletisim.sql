CREATE VIEW [dbo].[vw_PersonelIletisim]
AS
SELECT        dbo.tbl_Personeller.Pers_ID, dbo.tbl_Personeller.Pers_Isim, dbo.tbl_Personeller.Pers_Soyadi, dbo.tbl_Personeller.Pers_Tel, dbo.tbl_Personeller.Pers_Cep, dbo.tbl_Personeller.Pers_Email, 
                         dbo.tbl_Bolumler.Bolum_Adi AS Bolum, dbo.tbl_Kategoriler.Unvan, dbo.tbl_Personeller.Bolum_ID
FROM            dbo.tbl_Bolumler INNER JOIN
                         dbo.tbl_Personeller ON dbo.tbl_Bolumler.Bolum_ID = dbo.tbl_Personeller.Bolum_ID INNER JOIN
                         dbo.tbl_Kategoriler ON dbo.tbl_Personeller.Unvan_ID = dbo.tbl_Kategoriler.Kategori_ID
GO