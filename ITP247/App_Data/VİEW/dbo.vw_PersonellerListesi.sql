-- vw_PersonellerListesi Sorgusunu Oluşturma

CREATE VIEW vw_PersonellerListesi AS 
Select 
tbl_Personeller.Pers_ID,Pers_Adi,Pers_Soyadi,Pers_Isim,Pers_DTarihi,Pers_Ise_Giris_Tarihi,
Pers_Isten_Cikis_Tarihi,Pers_Cep,Pers_Email,Pers_Aktif_Mi,tbl_Bolumler.Bolum_ID,Bolum_Adi,tbl_Kategoriler.Unvan
from tbl_Bolumler INNER JOIN
                         tbl_Personeller ON tbl_Bolumler.Bolum_ID = tbl_Personeller.Bolum_ID INNER JOIN
                         tbl_Kategoriler ON tbl_Personeller.Unvan_ID = tbl_Kategoriler.Kategori_ID
GO
