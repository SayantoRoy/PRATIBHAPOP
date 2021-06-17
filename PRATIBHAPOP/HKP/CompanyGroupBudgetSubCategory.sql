CREATE TABLE [HKP].[CompanyGroupBudgetSubCategory] (
    [Id]                  VARCHAR (10) NOT NULL,
    [CompanyGroupId]      VARCHAR (10) NOT NULL,
    [BudgetSubCategoryId] VARCHAR (10) NOT NULL,
    [Active]              BIT          NOT NULL,
    [Archive]             BIT          NOT NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupBudgetSubCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupBudgetSubCategory_BudgetSubCategory] FOREIGN KEY ([BudgetSubCategoryId]) REFERENCES [HKP].[BudgetSubCategory] ([Id]),
    CONSTRAINT [FK_CompanyGroupBudgetSubCategory_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

