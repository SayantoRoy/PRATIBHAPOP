CREATE TABLE [HKP].[CompanyGroupBuyerDivision] (
    [Id]              VARCHAR (10) NOT NULL,
    [BuyerDivisionId] VARCHAR (10) NOT NULL,
    [CompanyGroupId]  VARCHAR (10) NOT NULL,
    [Active]          BIT          NOT NULL,
    [Archive]         BIT          NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupBuyerDivision] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupBuyerDivision_BuyerDivision] FOREIGN KEY ([BuyerDivisionId]) REFERENCES [HKP].[BuyerDivision] ([Id]),
    CONSTRAINT [FK_CompanyGroupBuyerDivision_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

