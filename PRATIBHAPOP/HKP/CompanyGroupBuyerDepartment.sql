CREATE TABLE [HKP].[CompanyGroupBuyerDepartment] (
    [Id]                VARCHAR (10) NOT NULL,
    [BuyerDepartmentId] VARCHAR (10) NOT NULL,
    [CompanyGroupId]    VARCHAR (10) NOT NULL,
    [Active]            BIT          NOT NULL,
    [Archive]           BIT          NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupBuyerDepartment] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupBuyerDepartment_BuyerDepartment] FOREIGN KEY ([BuyerDepartmentId]) REFERENCES [HKP].[BuyerDepartment] ([Id]),
    CONSTRAINT [FK_CompanyGroupBuyerDepartment_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

