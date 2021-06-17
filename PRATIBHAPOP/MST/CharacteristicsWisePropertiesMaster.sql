CREATE TABLE [MST].[CharacteristicsWisePropertiesMaster] (
    [Id]                 VARCHAR (10) NOT NULL,
    [MaterialMasterId]   VARCHAR (30) NULL,
    [Characteristics1Id] VARCHAR (10) NULL,
    [Characteristics2Id] VARCHAR (10) NULL,
    [Characteristics3Id] VARCHAR (10) NULL,
    [CompanyId]          VARCHAR (10) NULL,
    [CompanyGroupId]     VARCHAR (10) NULL,
    [Archive]            BIT          NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_CharacteristicsWisePropertiesMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CharacteristicsWisePropertiesMaster_Characteristics] FOREIGN KEY ([Characteristics2Id]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesMaster_Characteristics1] FOREIGN KEY ([Characteristics3Id]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesMaster_CharacteristicsWisePropertiesMaster1] FOREIGN KEY ([Characteristics1Id]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesMaster_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CharacteristicsWisePropertiesMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

