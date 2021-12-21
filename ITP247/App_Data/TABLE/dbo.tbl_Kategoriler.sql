CREATE TABLE [dbo].[tbl_Kategoriler] (
    [Kategori_ID] INT           IDENTITY (1, 1) NOT NULL,
    [Cinsiyet]    NVARCHAR (50) NULL,
    [Unvan]       NVARCHAR (50) NULL,
    [Kent_Adi]    NVARCHAR (50) NULL,
    [Ulke]        NVARCHAR (50) NULL,
    [Il_Adi]      NVARCHAR (50) NULL,
    [Il_Kodu]     NVARCHAR (2)  NULL,
    [Ay_Adi]      NCHAR (50)    NULL,
    [Yetki_Turu]  NVARCHAR (50) NULL,
    CONSTRAINT [PK_tbl_Kategoriler_Kategori_ID] PRIMARY KEY CLUSTERED ([Kategori_ID] ASC)
);

