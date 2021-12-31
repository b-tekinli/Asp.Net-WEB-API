-- tbl_Kategoriler Tablosunu Olusturma

CREATE TABLE tbl_Kategoriler
(
Kategori_ID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Cinsiyet nvarchar(50) NULL,
Unvan nvarchar(50) NULL,
Kent_Adi nvarchar(50) NULL,
Ulke [nvarchar](50) NULL,
Il_Adi nvarchar(50) NULL,
Il_Kodu nvarchar(2) NULL,
Ay_Adi nchar(50) NULL,
Yetki_Turu nvarchar(50) NULL,
)
