CREATE TABLE [HKP].[CompanyGroupAlternativeCOA] (
    [Id]               VARCHAR (10) NOT NULL,
    [CompanyGroupId]   VARCHAR (10) NOT NULL,
    [AlternativeCOAId] VARCHAR (10) NOT NULL,
    [Active]           BIT          NOT NULL,
    [Archive]          BIT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupAlternativeCOA] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupAlternativeCOA_AlternativeCOA] FOREIGN KEY ([AlternativeCOAId]) REFERENCES [HKP].[AlternativeCOA] ([Id]),
    CONSTRAINT [FK_CompanyGroupAlternativeCOA_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

