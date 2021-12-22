CREATE VIEW [dbo].[vw_PListesi]
AS
SELECT        dbo.tbl_Personeller.Pers_ID, dbo.tbl_Personeller.Pers_Adi
FROM            dbo.tbl_Bolumler INNER JOIN
                         dbo.tbl_Personeller ON dbo.tbl_Bolumler.Bolum_ID = dbo.tbl_Personeller.Bolum_ID INNER JOIN
                         dbo.tbl_Kategoriler ON dbo.tbl_Personeller.Unvan_ID = dbo.tbl_Kategoriler.Kategori_ID
GO