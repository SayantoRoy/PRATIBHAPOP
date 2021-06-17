CREATE TABLE [ACS].[PKGenerator] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NULL,
    [FieldName]      VARCHAR (100) NOT NULL,
    [Period]         VARCHAR (20)  NOT NULL,
    [MaxNumber]      BIGINT        NOT NULL,
    [UpdatedDate]    DATETIME      NOT NULL,
    CONSTRAINT [PK_PKGenerator] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PKGenerator_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

