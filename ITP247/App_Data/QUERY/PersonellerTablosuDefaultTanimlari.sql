-- Personeller Tablosu Default Tanimlari
ALTER TABLE tbl_Personeller ADD CONSTRAINT Pers_Ise_Giris_Tarihi DEFAULT GETDATE()      FOR  Pers_Ise_Giris_Tarihi
ALTER TABLE tbl_Personeller ADD CONSTRAINT Kayit_Tarihi          DEFAULT GETDATE()      FOR  Kayit_Tarihi
ALTER TABLE tbl_Personeller ADD CONSTRAINT Pers_Maas             DEFAULT (0)            FOR  Pers_Maas
ALTER TABLE tbl_Personeller ADD CONSTRAINT Pers_Komisyon_Yuzdesi DEFAULT (0)            FOR  Pers_Komisyon_Yuzdesi
ALTER TABLE tbl_Personeller ADD CONSTRAINT Pers_Aktif_Mi         DEFAULT (1)            FOR  Pers_Aktif_Mi
ALTER TABLE tbl_Personeller ADD CONSTRAINT Kaydeden              DEFAULT (suser_name()) FOR  Kaydeden
