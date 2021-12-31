-- tbl_PersonelMaaslari Tablosunu Olusturma --

CREATE TABLE tbl_PersonelMaaslari
(
Maas_ID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Pers_ID int NOT NULL,
Maas_Odeme_Tarihi smalldatetime NOT NULL,
Maas_Tutari money NOT NULL,
Maas_Komisyon money NOT NULL,
Maas_Toplam  AS [Maas_Tutari] + [Maas_Komisyon],
Ay_ID int NULL,
Maas_Yili  AS (datepart(year,[Maas_Odeme_Tarihi])),
)
