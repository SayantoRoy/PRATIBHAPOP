CREATE TABLE [TRN].[SubFixedAssetRegister] (
    [Id]                   VARCHAR (30)    NOT NULL,
    [FixedAssetRegisterId] VARCHAR (30)    NOT NULL,
    [SubAssetTypeId]       VARCHAR (10)    NOT NULL,
    [Amount]               DECIMAL (18, 4) NULL,
    [Remarks]              VARCHAR (250)   NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    [CapitalizationDate]   DATETIME        NULL,
    [CapitalizeRegisterNo] VARCHAR (50)    NULL,
    CONSTRAINT [PK_SubFixedAssetRegister] PRIMARY KEY CLUSTERED ([Id] ASC)
);

