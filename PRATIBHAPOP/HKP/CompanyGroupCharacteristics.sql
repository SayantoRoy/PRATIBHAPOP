CREATE TABLE [HKP].[CompanyGroupCharacteristics] (
    [Id]                VARCHAR (10) NOT NULL,
    [CompanyGroupId]    VARCHAR (10) NOT NULL,
    [CharacteristicsId] VARCHAR (10) NOT NULL,
    [Active]            BIT          NOT NULL,
    [Archive]           BIT          NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupWiseCharacteristics] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupWiseCharacteristics_Characteristics] FOREIGN KEY ([CharacteristicsId]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_CompanyGroupWiseCharacteristics_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

