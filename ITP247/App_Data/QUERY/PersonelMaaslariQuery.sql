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