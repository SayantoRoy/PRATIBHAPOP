CREATE TABLE [dbo].[CostingBuyer] (
    [Id]                      VARCHAR (10) NOT NULL,
    [CostingMasterTemplateId] VARCHAR (10) NOT NULL,
    [BuyerId]                 VARCHAR (10) NOT NULL,
    [BuyerStyleRefNo]         VARCHAR (50) NOT NULL,
    [OwnStyleRefNo]           VARCHAR (50) NOT NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedDate]               DATETIME     NOT NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CostingBuyer_BulletinTemplate] FOREIGN KEY ([CostingMasterTemplateId]) REFERENCES [dbo].[CostingMasterTemplate] ([Id]),
    CONSTRAINT [FK_CostingBuyer_Buyer] FOREIGN KEY ([BuyerId]) REFERENCES [HKP].[Buyer] ([Id])
);

