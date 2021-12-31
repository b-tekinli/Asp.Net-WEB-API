-- vw_PersonelIletisim Sorgusunu Olusturma

CREATE VIEW vw_PersonelIletisim AS
Select 
tbl_Personeller.Pers_ID,Pers_Isim,Pers_Soyadi,Pers_Tel,Pers_Cep,Pers_Email,tbl_Bolumler.Bolum_Adi AS Bolum,tbl_Kategoriler.Unvan,tbl_Personeller.Bolum_ID

from  tbl_Bolumler INNER JOIN tbl_Personeller ON tbl_Bolumler.Bolum_ID =tbl_Personeller.Bolum_ID INNER JOIN
tbl_Kategoriler ON tbl_Personeller.Unvan_ID=tbl_Kategoriler.Kategori_ID 
GO
