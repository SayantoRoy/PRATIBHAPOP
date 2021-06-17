CREATE TABLE [HKP].[CompanyGroupProcessCriteria] (
    [Id]                VARCHAR (10) NOT NULL,
    [CompanyGroupId]    VARCHAR (10) NOT NULL,
    [ProcessCriteriaId] VARCHAR (10) NOT NULL,
    [Active]            BIT          NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupProcessCriteria] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupProcessCriteria_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupProcessCriteria_ProcessCriteria] FOREIGN KEY ([ProcessCriteriaId]) REFERENCES [HKP].[ProcessCriteria] ([Id])
);

