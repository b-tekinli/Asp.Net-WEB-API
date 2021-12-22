ALTER TABLE [dbo].[tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personeller_tbl_Bolumler_Bolum_ID] FOREIGN KEY ([Bolum_ID])
REFERENCES [dbo].[tbl_Bolumler] ([Bolum_ID])
GO
ALTER TABLE [dbo].[tbl_Personeller] CHECK CONSTRAINT [FK_tbl_Personeller_tbl_Bolumler_Bolum_ID]
GO

ALTER TABLE [dbo].[tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personeller_tbl_Kategoriler_Unvan_ID] FOREIGN KEY ([Unvan_ID])
REFERENCES [dbo].[tbl_Kategoriler] ([Kategori_ID])
GO
ALTER TABLE [dbo].[tbl_Personeller] CHECK CONSTRAINT [FK_tbl_Personeller_tbl_Kategoriler_Unvan_ID]
GO