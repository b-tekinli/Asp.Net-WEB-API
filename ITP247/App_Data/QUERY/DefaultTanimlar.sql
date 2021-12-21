-- DEFAULT TANİMLAR

ALTER TABLE [dbo].[tbl_Personeller] ADD  CONSTRAINT [DF_tbl_Personeller_Pers_Ise_Giris_Tarihi]  DEFAULT (getdate()) FOR [Pers_Ise_Giris_Tarihi]
ALTER TABLE [dbo].[tbl_Personeller] ADD  CONSTRAINT [DF_tbl_Personeller_Pers_Maas]  DEFAULT ((0)) FOR [Pers_Maas]
ALTER TABLE [dbo].[tbl_Personeller] ADD  CONSTRAINT [DF_tbl_Personeller_Pers_Komisyon_Yuzdesi]  DEFAULT ((0)) FOR [Pers_Komisyon_Yuzdesi]
ALTER TABLE [dbo].[tbl_Personeller] ADD  CONSTRAINT [DF_tbl_Personeller_Pers_Aktif_Mi]  DEFAULT ((1)) FOR [Pers_Aktif_Mi]
ALTER TABLE [tbl_Personeller] ADD CONSTRAINT [DF_tbl_Personeller_Kaydeden]  DEFAULT (suser_name()) FOR [Kaydeden]
ALTER TABLE [tbl_Personeller] ADD CONSTRAINT [DF_tbl_Personeller_Kayit_Tarihi]  DEFAULT (getdate()) FOR [Kayit_Tarihi]
ALTER TABLE [dbo].[tbl_Kullanicilar] ADD  CONSTRAINT [DF_tbl_Kullanicilar_Yetki_ID]  DEFAULT ((1)) FOR [Yetki_ID]
GO