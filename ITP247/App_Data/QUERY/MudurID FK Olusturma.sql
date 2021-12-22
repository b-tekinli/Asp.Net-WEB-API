ALTER TABLE [dbo].[tbl_Bolumler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Bolumler_tbl_Personeller_Mudur_ID] FOREIGN KEY([Mudur_ID])
REFERENCES [dbo].[tbl_Personeller] ([Pers_ID])
GO
ALTER TABLE [dbo].[tbl_Bolumler] CHECK CONSTRAINT [FK_tbl_Bolumler_tbl_Personeller_Mudur_ID]
GO