ALTER TABLE [dbo].[tbl_Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Kullanicilar_tbl_Kategoriler_Yetki_ID] FOREIGN KEY([Yetki_ID])
REFERENCES [dbo].[tbl_Kategoriler] ([Kategori_ID])
GO
ALTER TABLE [dbo].[tbl_Kullanicilar] CHECK CONSTRAINT [FK_tbl_Kullanicilar_tbl_Kategoriler_Yetki_ID]
GO