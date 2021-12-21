-- DEFAULT TANİMLARİ
ALTER TABLE [dbo].[tbl_Personeller] ADD  CONSTRAINT [DF_tbl_Personeller_Pers_Ise_Giris_Tarihi]  DEFAULT (getdate()) FOR [Pers_Ise_Giris_Tarihi]
ALTER TABLE [dbo].[tbl_Personeller] ADD  CONSTRAINT [DF_tbl_Personeller_Pers_Maas]  DEFAULT ((0)) FOR [Pers_Maas]
ALTER TABLE [dbo].[tbl_Personeller] ADD  CONSTRAINT [DF_tbl_Personeller_Pers_Komisyon_Yuzdesi]  DEFAULT ((0)) FOR [Pers_Komisyon_Yuzdesi]
ALTER TABLE [dbo].[tbl_Personeller] ADD  CONSTRAINT [DF_tbl_Personeller_Pers_Aktif_Mi]  DEFAULT ((1)) FOR [Pers_Aktif_Mi]
ALTER TABLE [tbl_Personeller] ADD CONSTRAINT [DF_tbl_Personeller_Kaydeden]  DEFAULT (suser_name()) FOR [Kaydeden]
ALTER TABLE [tbl_Personeller] ADD CONSTRAINT [DF_tbl_Personeller_Kayit_Tarihi]  DEFAULT (getdate()) FOR [Kayit_Tarihi]
GO

-- FK TANİMLARİ
ALTER TABLE [dbo].[tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personeller_tbl_Bolumler_Bolum_ID] FOREIGN KEY([Bolum_ID])
REFERENCES [dbo].[tbl_Bolumler] ([Bolum_ID])
GO
ALTER TABLE [dbo].[tbl_Personeller] CHECK CONSTRAINT [FK_tbl_Personeller_tbl_Bolumler_Bolum_ID]
GO

ALTER TABLE [dbo].[tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personeller_tbl_Kategoriler_Unvan_ID] FOREIGN KEY([Unvan_ID])
REFERENCES [dbo].[tbl_Kategoriler] ([Kategori_ID])
GO
ALTER TABLE [dbo].[tbl_Personeller] CHECK CONSTRAINT [FK_tbl_Personeller_tbl_Kategoriler_Unvan_ID]
GO



ALTER TABLE [dbo].[tbl_PersonelMaaslari] ADD  CONSTRAINT [DF_tbl_PersonelMaaslari_Maas_Odeme_Tarihi]  DEFAULT (getdate()) FOR [Maas_Odeme_Tarihi]
ALTER TABLE [dbo].[tbl_PersonelMaaslari] ADD  CONSTRAINT [DF_tbl_PersonelMaaslari_Maas_Tutari]  DEFAULT ((0)) FOR [Maas_Tutari]
ALTER TABLE [dbo].[tbl_PersonelMaaslari] ADD  CONSTRAINT [DF_tbl_PersonelMaaslari_Maas_Komisyon]  DEFAULT ((0)) FOR [Maas_Komisyon]
ALTER TABLE [dbo].[tbl_PersonelMaaslari] ADD  CONSTRAINT [DF_tbl_PersonelMaaslari_Ay_ID]  DEFAULT (datepart(month,getdate())) FOR [Ay_ID]
GO

ALTER TABLE [dbo].[tbl_PersonelMaaslari]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelMaaslari_tbl_Kategoriler_Ay_ID] FOREIGN KEY([Ay_ID])
REFERENCES [dbo].[tbl_Kategoriler] ([Kategori_ID])
GO
ALTER TABLE [dbo].[tbl_PersonelMaaslari] CHECK CONSTRAINT [FK_tbl_PersonelMaaslari_tbl_Kategoriler_Ay_ID]
GO

ALTER TABLE [dbo].[tbl_PersonelMaaslari]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PersonelMaaslari_tbl_Personeller_Pers_ID] FOREIGN KEY([Pers_ID])
REFERENCES [dbo].[tbl_Personeller] ([Pers_ID])
GO
ALTER TABLE [dbo].[tbl_PersonelMaaslari] CHECK CONSTRAINT [FK_tbl_PersonelMaaslari_tbl_Personeller_Pers_ID]
GO


--Mudur ID FK Olusturma
ALTER TABLE [dbo].[tbl_Bolumler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Bolumler_tbl_Personeller_Mudur_ID] FOREIGN KEY([Mudur_ID])
REFERENCES [dbo].[tbl_Personeller] ([Pers_ID])
GO
ALTER TABLE [dbo].[tbl_Bolumler] CHECK CONSTRAINT [FK_tbl_Bolumler_tbl_Personeller_Mudur_ID]
GO


--Yetki ID FK Olusturma
ALTER TABLE [dbo].[tbl_Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Kullanicilar_tbl_Kategoriler_Yetki_ID] FOREIGN KEY([Yetki_ID])
REFERENCES [dbo].[tbl_Kategoriler] ([Kategori_ID])
GO
ALTER TABLE [dbo].[tbl_Kullanicilar] CHECK CONSTRAINT [FK_tbl_Kullanicilar_tbl_Kategoriler_Yetki_ID]
GO


--vw_PersonelAylik Maaslari Sorgusunu Olusturma
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


-- vw_PersonelIletisim Sorgusunu Olusturma
CREATE VIEW [dbo].[vw_PersonelIletisim]
AS
SELECT        dbo.tbl_Personeller.Pers_ID, dbo.tbl_Personeller.Pers_Isim, dbo.tbl_Personeller.Pers_Soyadi, dbo.tbl_Personeller.Pers_Tel, dbo.tbl_Personeller.Pers_Cep, dbo.tbl_Personeller.Pers_Email, 
                         dbo.tbl_Bolumler.Bolum_Adi AS Bolum, dbo.tbl_Kategoriler.Unvan, dbo.tbl_Personeller.Bolum_ID
FROM            dbo.tbl_Bolumler INNER JOIN
                         dbo.tbl_Personeller ON dbo.tbl_Bolumler.Bolum_ID = dbo.tbl_Personeller.Bolum_ID INNER JOIN
                         dbo.tbl_Kategoriler ON dbo.tbl_Personeller.Unvan_ID = dbo.tbl_Kategoriler.Kategori_ID
GO


-- vw_PersonellerListesi Sorgusunu Olusturma
CREATE VIEW [dbo].[vw_PersonellerListesi]
AS
SELECT        dbo.tbl_Personeller.Pers_ID, dbo.tbl_Personeller.Pers_Adi, dbo.tbl_Personeller.Pers_Soyadi, dbo.tbl_Personeller.Pers_Isim, dbo.tbl_Personeller.Pers_DTarihi, dbo.tbl_Personeller.Pers_Ise_Giris_Tarihi, 
                         dbo.tbl_Personeller.Pers_Isten_Cikis_Tarihi, dbo.tbl_Personeller.Pers_Cep, dbo.tbl_Personeller.Pers_Email, dbo.tbl_Personeller.Pers_Aktif_Mi, dbo.tbl_Bolumler.Bolum_ID, dbo.tbl_Bolumler.Bolum_Adi, 
                         dbo.tbl_Kategoriler.Unvan
FROM            dbo.tbl_Bolumler INNER JOIN
                         dbo.tbl_Personeller ON dbo.tbl_Bolumler.Bolum_ID = dbo.tbl_Personeller.Bolum_ID INNER JOIN
                         dbo.tbl_Kategoriler ON dbo.tbl_Personeller.Unvan_ID = dbo.tbl_Kategoriler.Kategori_ID
GO


-- vw_PersonelYillikMaaslari Sorgusunu Olu�turma
CREATE VIEW [dbo].[vw_PersonelYillikMaaslari]
AS
SELECT        Pers_Isim AS Personel, Maas_Yili AS Yil, SUM(MaasToplam) AS Toplam
FROM            dbo.vw_PersonelAylikMaaslari
GROUP BY Pers_Isim, Maas_Yili
GO


--vw_PersonelPIVOTTablosu Sorgusunu Olusturma
-- Pivot Tablo Olusturma. SELECT kismi tek basina, sonrada PIVOT'la birlikte calistirinca aradaki fark gorulebilir.
CREATE VIEW [dbo].[vw_PersonelPIVOTTablosu] AS
SELECT * FROM (SELECT Pers_Adi, Pers_Ili, COUNT(Pers_ID) AS ElemanSayisi FROM tbl_Personeller
GROUP BY Pers_Adi, Pers_Ili) AS ElemanSayisi
PIVOT
(COUNT(ElemanSayisi) FOR Pers_Ili IN ([Bursa], [Ankara], [�stanbul],[�zmir],[Zonguldak])) AS P
GO