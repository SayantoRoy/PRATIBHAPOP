CREATE TABLE [MST].[CharacteristicsWisePropertiesDetail] (
    [Id]                                    VARCHAR (10) NOT NULL,
    [CharacteristicsWisePropertiesMasterId] VARCHAR (10) NULL,
    [MaterialMasterId]                      VARCHAR (30) NULL,
    [Characteristics1ValueId]               VARCHAR (10) NULL,
    [Characteristics2ValueId]               VARCHAR (10) NULL,
    [Characteristics3ValueId]               VARCHAR (10) NULL,
    [Archive]                               BIT          NULL,
    [AddedBy]                               VARCHAR (30) NOT NULL,
    [AddedDate]                             DATETIME     NOT NULL,
    [AddedFromIP]                           VARCHAR (15) NOT NULL,
    [UpdatedBy]                             VARCHAR (30) NULL,
    [UpdatedDate]                           DATETIME     NULL,
    [UpdatedFromIP]                         VARCHAR (15) NULL,
    CONSTRAINT [PK_CharacteristicsWisePropertiesDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CharacteristicsWisePropertiesDetail_CharacteristicsValue] FOREIGN KEY ([Characteristics1ValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesDetail_CharacteristicsValue1] FOREIGN KEY ([Characteristics2ValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesDetail_CharacteristicsValue2] FOREIGN KEY ([Characteristics3ValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesDetail_CharacteristicsWisePropertiesMaster] FOREIGN KEY ([CharacteristicsWisePropertiesMasterId]) REFERENCES [MST].[CharacteristicsWisePropertiesMaster] ([Id])
);

