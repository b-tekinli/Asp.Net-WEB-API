CREATE TABLE [dbo].[tbl_Bolumler] (
    [Bolum_ID]  INT           IDENTITY (1, 1) NOT NULL,
    [Bolum_Adi] NVARCHAR (50) NOT NULL,
    [Bolum_Tel] NVARCHAR (15) NOT NULL,
    [Mudur_ID]  INT           NOT NULL,
    CONSTRAINT [PK_tbl_Bolumler_Bolum_ID] PRIMARY KEY CLUSTERED ([Bolum_ID] ASC)
);

