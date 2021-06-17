CREATE TABLE [MST].[CharacteristicsWisePropertiesUOM] (
    [Id]                                    VARCHAR (10) NOT NULL,
    [CharacteristicsWisePropertiesMasterId] VARCHAR (10) NULL,
    [CharacteristicsWisePropertiesDetailId] VARCHAR (10) NULL,
    [UOMId]                                 VARCHAR (10) NOT NULL,
    [Archive]                               BIT          NOT NULL,
    [AddedBy]                               VARCHAR (30) NOT NULL,
    [AddedDate]                             DATETIME     NOT NULL,
    [AddedFromIP]                           VARCHAR (15) NOT NULL,
    [UpdatedBy]                             VARCHAR (30) NULL,
    [UpdatedDate]                           DATETIME     NULL,
    [UpdatedFromIP]                         VARCHAR (15) NULL,
    CONSTRAINT [PK_CharacteristicsWisePropertiesUOM] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CharacteristicsWisePropertiesUOM_CharacteristicsWisePropertiesDetail] FOREIGN KEY ([CharacteristicsWisePropertiesDetailId]) REFERENCES [MST].[CharacteristicsWisePropertiesDetail] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesUOM_CharacteristicsWisePropertiesUOM] FOREIGN KEY ([CharacteristicsWisePropertiesMasterId]) REFERENCES [MST].[CharacteristicsWisePropertiesMaster] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesUOM_UnitOfMeasurement] FOREIGN KEY ([UOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

