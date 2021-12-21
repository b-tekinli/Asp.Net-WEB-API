CREATE TABLE [dbo].[tbl_Kullanicilar] (
    [Kullanici_ID]    INT           IDENTITY (1, 1) NOT NULL,
    [Kullanici_Adi]   NVARCHAR (50) NULL,
    [Kullanici_Sifre] NVARCHAR (15) NULL,
    [Yetki_ID]        INT           NULL,
    CONSTRAINT [PK_tbl_Kullanicilar_Kullanici_ID] PRIMARY KEY CLUSTERED ([Kullanici_ID] ASC)
);

