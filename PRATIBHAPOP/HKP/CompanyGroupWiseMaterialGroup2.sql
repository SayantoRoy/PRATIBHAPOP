CREATE TABLE [HKP].[CompanyGroupWiseMaterialGroup2] (
    [Id]               VARCHAR (10) NOT NULL,
    [MaterialGroup2Id] VARCHAR (10) NOT NULL,
    [CompanyGroupId]   VARCHAR (10) NOT NULL,
    [Active]           BIT          NOT NULL,
    [Archive]          BIT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupWiseMaterialGroup2] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupWiseMaterialGroup2_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupWiseMaterialGroup2_MaterialGroup2] FOREIGN KEY ([MaterialGroup2Id]) REFERENCES [HKP].[MaterialGroup2] ([Id])
);

