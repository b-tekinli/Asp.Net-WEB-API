CREATE TABLE [dbo].[tbl_PersonelMaaslari] (
    [Maas_ID]           INT           IDENTITY (1, 1) NOT NULL,
    [Pers_ID]           INT           NOT NULL,
    [Maas_Odeme_Tarihi] SMALLDATETIME NOT NULL,
    [Maas_Tutari]       MONEY         NOT NULL,
    [Maas_Komisyon]     MONEY         NOT NULL,
    [Maas_Toplam]       AS            ([Maas_Tutari]+[Maas_Komisyon]),
    [Ay_ID]             INT           NULL,
    [Maas_Yili]         AS            (datepart(year,[Maas_Odeme_Tarihi])),
    CONSTRAINT [PK_tbl_PersonelMaaslari_Maas_ID] PRIMARY KEY CLUSTERED ([Maas_ID] ASC)
);

