CREATE TABLE [MST].[CharacteristicsWisePropertiesUOMFactor] (
    [Id]                                    VARCHAR (10)    NOT NULL,
    [CharacteristicsWisePropertiesMasterId] VARCHAR (10)    NULL,
    [CharacteristicsWisePropertiesDetailId] VARCHAR (10)    NULL,
    [AlternativeUOMId]                      VARCHAR (10)    NOT NULL,
    [AlternativeUOMFactor]                  DECIMAL (18, 3) NULL,
    [BaseUOMId]                             VARCHAR (10)    NULL,
    [BaseUOMFactor]                         DECIMAL (18, 3) NULL,
    [Archive]                               BIT             NOT NULL,
    [AddedBy]                               VARCHAR (30)    NOT NULL,
    [AddedDate]                             DATETIME        NOT NULL,
    [AddedFromIP]                           VARCHAR (15)    NOT NULL,
    [UpdatedBy]                             VARCHAR (30)    NULL,
    [UpdatedDate]                           DATETIME        NULL,
    [UpdatedFromIP]                         VARCHAR (15)    NULL,
    CONSTRAINT [PK_CharacteristicsWisePropertiesUOMFactor] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CharacteristicsWisePropertiesUOMFactor_CharacteristicsWisePropertiesDetail] FOREIGN KEY ([CharacteristicsWisePropertiesDetailId]) REFERENCES [MST].[CharacteristicsWisePropertiesDetail] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesUOMFactor_CharacteristicsWisePropertiesMaster] FOREIGN KEY ([CharacteristicsWisePropertiesMasterId]) REFERENCES [MST].[CharacteristicsWisePropertiesMaster] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesUOMFactor_UnitOfMeasurement] FOREIGN KEY ([BaseUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesUOMFactor_UnitOfMeasurement1] FOREIGN KEY ([AlternativeUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

