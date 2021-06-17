CREATE TABLE [HKP].[CompanyGroupBuyerBrand] (
    [Id]             VARCHAR (10) NOT NULL,
    [BuyerBrandId]   VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [Active]         BIT          NOT NULL,
    [Archive]        BIT          NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupBuyerBrand] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupBuyerBrand_BuyerBrand] FOREIGN KEY ([BuyerBrandId]) REFERENCES [HKP].[BuyerBrand] ([Id]),
    CONSTRAINT [FK_CompanyGroupBuyerBrand_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

