-- Personeller Tablosu Foreign Olusturma
ALTER TABLE tbl_Personeller ADD FOREIGN KEY (Unvan_ID) REFERENCES tbl_Kategoriler (Kategori_ID)
ALTER TABLE tbl_Personeller ADD FOREIGN KEY (Bolum_ID) REFERENCES tbl_Bolumler (Bolum_ID)


--Müdür ID Foreign Olusturma
ALTER TABLE tbl_Bolumler   ADD FOREIGN KEY (Mudur_ID) REFERENCES tbl_Personeller (Pers_ID)


--Yetki ID Foreign Olusturma 
ALTER TABLE tbl_Kullanicilar   ADD FOREIGN KEY  (Yetki_ID) REFERENCES tbl_Kategoriler (Kategori_ID)
