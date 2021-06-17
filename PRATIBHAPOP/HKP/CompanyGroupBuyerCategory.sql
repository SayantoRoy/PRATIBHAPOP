CREATE TABLE [HKP].[CompanyGroupBuyerCategory] (
    [Id]              VARCHAR (10) NOT NULL,
    [CompanyGroupId]  VARCHAR (10) NOT NULL,
    [BuyerCategoryId] VARCHAR (10) NOT NULL,
    [Active]          BIT          NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupBuyerCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupBuyerCategory_BuyerCategory] FOREIGN KEY ([BuyerCategoryId]) REFERENCES [HKP].[BuyerCategory] ([Id]),
    CONSTRAINT [FK_CompanyGroupBuyerCategory_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

