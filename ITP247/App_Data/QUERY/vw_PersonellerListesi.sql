CREATE VIEW [dbo].[vw_PersonellerListesi]
AS
SELECT        dbo.tbl_Personeller.Pers_ID, dbo.tbl_Personeller.Pers_Adi, dbo.tbl_Personeller.Pers_Soyadi, dbo.tbl_Personeller.Pers_Isim, dbo.tbl_Personeller.Pers_DTarihi, dbo.tbl_Personeller.Pers_Ise_Giris_Tarihi, 
                         dbo.tbl_Personeller.Pers_Isten_Cikis_Tarihi, dbo.tbl_Personeller.Pers_Cep, dbo.tbl_Personeller.Pers_Email, dbo.tbl_Personeller.Pers_Aktif_Mi, dbo.tbl_Bolumler.Bolum_ID, dbo.tbl_Bolumler.Bolum_Adi, 
                         dbo.tbl_Kategoriler.Unvan
FROM            dbo.tbl_Bolumler INNER JOIN
                         dbo.tbl_Personeller ON dbo.tbl_Bolumler.Bolum_ID = dbo.tbl_Personeller.Bolum_ID INNER JOIN
                         dbo.tbl_Kategoriler ON dbo.tbl_Personeller.Unvan_ID = dbo.tbl_Kategoriler.Kategori_ID
GO
