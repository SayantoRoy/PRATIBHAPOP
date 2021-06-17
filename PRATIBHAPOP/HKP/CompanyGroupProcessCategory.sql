CREATE TABLE [HKP].[CompanyGroupProcessCategory] (
    [Id]                VARCHAR (10) NOT NULL,
    [CompanyGroupId]    VARCHAR (10) NOT NULL,
    [ProcessCategoryId] VARCHAR (10) NOT NULL,
    [Active]            BIT          NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupProcessCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupProcessCategory_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupProcessCategory_ProcessCategory] FOREIGN KEY ([ProcessCategoryId]) REFERENCES [HKP].[ProcessCategory] ([Id])
);

