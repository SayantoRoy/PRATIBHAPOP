CREATE TABLE [HKP].[CompanyGroupSOPSubCategory] (
    [Id]               VARCHAR (10) NOT NULL,
    [CompanyGroupId]   VARCHAR (10) NOT NULL,
    [SOPSubCategoryId] VARCHAR (10) NOT NULL,
    [Active]           BIT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupSOPSubCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupSOPSubCategory_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupSOPSubCategory_SOPSubCategory] FOREIGN KEY ([SOPSubCategoryId]) REFERENCES [HKP].[SOPSubCategory] ([Id])
);

