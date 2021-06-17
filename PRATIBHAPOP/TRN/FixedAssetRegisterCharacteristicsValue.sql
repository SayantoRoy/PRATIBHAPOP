CREATE TABLE [TRN].[FixedAssetRegisterCharacteristicsValue] (
    [Id]                                   INT          IDENTITY (1, 1) NOT NULL,
    [MaterialMasterId]                     VARCHAR (30) NOT NULL,
    [FixedAssetRegisterId]                 VARCHAR (30) NOT NULL,
    [MaterialMasterCharacteristicsId]      VARCHAR (10) NOT NULL,
    [CharacteristicsId]                    VARCHAR (10) NOT NULL,
    [CharacteristicsValueId]               VARCHAR (10) NULL,
    [MaterialMasterCharacteristicsValueId] INT          NULL,
    [CharacteristicsValueFreeText]         VARCHAR (50) NULL,
    [AddedBy]                              VARCHAR (30) NOT NULL,
    [AddedDate]                            DATETIME     NOT NULL,
    [AddedFromIP]                          VARCHAR (15) NOT NULL,
    [UpdatedBy]                            VARCHAR (30) NULL,
    [UpdatedDate]                          DATETIME     NULL,
    [UpdatedFromIP]                        VARCHAR (15) NULL,
    CONSTRAINT [PK_FixedAssetRegisterCharacteristicsValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FixedAssetRegisterCharacteristicsValue_Characteristics] FOREIGN KEY ([CharacteristicsId]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_FixedAssetRegisterCharacteristicsValue_CharacteristicsValue] FOREIGN KEY ([CharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [FK_FixedAssetRegisterCharacteristicsValue_FixedAssetRegister] FOREIGN KEY ([FixedAssetRegisterId]) REFERENCES [TRN].[FixedAssetRegister] ([Id]),
    CONSTRAINT [FK_FixedAssetRegisterCharacteristicsValue_FixedAssetRegisterCharacteristicsValue] FOREIGN KEY ([Id]) REFERENCES [TRN].[FixedAssetRegisterCharacteristicsValue] ([Id]),
    CONSTRAINT [FK_FixedAssetRegisterCharacteristicsValue_MaterialMasterCharacteristics] FOREIGN KEY ([MaterialMasterCharacteristicsId]) REFERENCES [MST].[MaterialMasterCharacteristics] ([Id])
);

