-- tbl_Kullanicilar Tablosu Olusturma

CREATE TABLE tbl_Kullanicilar
(
Kullanici_ID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Kullanici_Adi nvarchar(50) NULL,
Kullanici_Sifre nvarchar(15) NULL,
Yetki_ID int NULL,
)
