CREATE TABLE [HKP].[CompanyGroupWiseProductSubCategory] (
    [Id]                   VARCHAR (10) NOT NULL,
    [ProductSubCategoryId] VARCHAR (10) NOT NULL,
    [CompanyGroupId]       VARCHAR (10) NOT NULL,
    [Active]               BIT          NOT NULL,
    [Archive]              BIT          NOT NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupWiseProductSubCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupWiseProductSubCategory_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupWiseProductSubCategory_ProductSubCategory] FOREIGN KEY ([ProductSubCategoryId]) REFERENCES [HKP].[ProductSubCategory] ([Id])
);

