CREATE TABLE [HKP].[CompanyGroupWiseMaterialGroup4] (
    [Id]               VARCHAR (10) NOT NULL,
    [MaterialGroup4Id] VARCHAR (10) NOT NULL,
    [CompanyGroupId]   VARCHAR (10) NOT NULL,
    [Active]           BIT          NOT NULL,
    [Archive]          BIT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupWiseMaterialGroup4] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupWiseMaterialGroup4_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupWiseMaterialGroup4_MaterialGroup4] FOREIGN KEY ([MaterialGroup4Id]) REFERENCES [HKP].[MaterialGroup4] ([Id])
);

