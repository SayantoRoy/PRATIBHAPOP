CREATE TABLE [MST].[CustomerDivision] (
    [Id]                  VARCHAR (10) NOT NULL,
    [CompanyGroupId]      VARCHAR (10) NOT NULL,
    [CompanyId]           VARCHAR (10) NOT NULL,
    [PlantId]             VARCHAR (10) NOT NULL,
    [PartyAccountGroupId] VARCHAR (10) NOT NULL,
    [PartyId]             VARCHAR (10) NOT NULL,
    [BuyerId]             VARCHAR (10) NULL,
    [BuyerBrandId]        VARCHAR (10) NULL,
    [BuyerDivisionId]     VARCHAR (10) NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    CONSTRAINT [PK_CustomerDivision] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CustomerDivision_Buyer] FOREIGN KEY ([BuyerId]) REFERENCES [HKP].[Buyer] ([Id]),
    CONSTRAINT [FK_CustomerDivision_BuyerBrand] FOREIGN KEY ([BuyerBrandId]) REFERENCES [HKP].[BuyerBrand] ([Id]),
    CONSTRAINT [FK_CustomerDivision_BuyerDivision] FOREIGN KEY ([BuyerDivisionId]) REFERENCES [HKP].[BuyerDivision] ([Id]),
    CONSTRAINT [FK_CustomerDivision_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CustomerDivision_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CustomerDivision_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_CustomerDivision_PartyAccountGroup] FOREIGN KEY ([PartyAccountGroupId]) REFERENCES [HKP].[PartyAccountGroup] ([Id]),
    CONSTRAINT [FK_CustomerDivision_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);


GO
ALTER TABLE [MST].[CustomerDivision] NOCHECK CONSTRAINT [FK_CustomerDivision_Buyer];


GO
ALTER TABLE [MST].[CustomerDivision] NOCHECK CONSTRAINT [FK_CustomerDivision_BuyerBrand];


GO
ALTER TABLE [MST].[CustomerDivision] NOCHECK CONSTRAINT [FK_CustomerDivision_BuyerDivision];


GO
ALTER TABLE [MST].[CustomerDivision] NOCHECK CONSTRAINT [FK_CustomerDivision_Party];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This value comes from party table where party is customer ', @level0type = N'SCHEMA', @level0name = N'MST', @level1type = N'TABLE', @level1name = N'CustomerDivision', @level2type = N'COLUMN', @level2name = N'PartyId';

