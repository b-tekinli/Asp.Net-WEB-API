--  PersonelMaaslari Tablosu Default Tanimlari

ALTER TABLE tbl_PersonelMaaslari ADD CONSTRAINT Maas_Odeme_Tarihi DEFAULT GETDATE()                  FOR Maas_Odeme_Tarihi
ALTER TABLE tbl_PersonelMaaslari ADD CONSTRAINT Maas_Tutari       DEFAULT (0)                        FOR Maas_Tutari
ALTER TABLE tbl_PersonelMaaslari ADD CONSTRAINT Maas_Komisyon     DEFAULT (0)                        FOR Maas_Komisyon
ALTER TABLE tbl_PersonelMaaslari ADD CONSTRAINT Ay_ID             DEFAULT(datepart(month,getdate())) FOR Ay_ID
