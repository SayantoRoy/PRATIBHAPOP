CREATE TABLE [HKP].[FixedAssetRegisterSkuValue] (
    [Id]                         VARCHAR (10)  NOT NULL,
    [AssetItemId]                VARCHAR (10)  NOT NULL,
    [FixedAssetRegisterId]       VARCHAR (30)  NOT NULL,
    [AssetItemCharacteristicsId] VARCHAR (10)  NOT NULL,
    [SkuValue]                   VARCHAR (250) NOT NULL,
    [AddedBy]                    VARCHAR (30)  NOT NULL,
    [AddedDate]                  DATETIME      NOT NULL,
    [AddedFromIP]                VARCHAR (15)  NOT NULL,
    [UpdatedBy]                  VARCHAR (30)  NULL,
    [UpdatedDate]                DATETIME      NULL,
    [UpdatedFromIP]              VARCHAR (15)  NULL,
    CONSTRAINT [PK_FixedAssetRegisterSkuValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FixedAssetRegisterSkuValue_FixedAssetRegister] FOREIGN KEY ([FixedAssetRegisterId]) REFERENCES [TRN].[FixedAssetRegister] ([Id])
);

