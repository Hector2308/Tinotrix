﻿CREATE TABLE [dbo].[Pais] (
    [UidPais]   UNIQUEIDENTIFIER CONSTRAINT [DF_Pais_UidPais] DEFAULT (newid()) NOT NULL,
    [VchNombre] NVARCHAR (20)    NOT NULL,
    CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED ([UidPais] ASC)
);
