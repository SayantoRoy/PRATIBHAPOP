CREATE TABLE [dbo].[OrderCostingBuyer] (
    [Id]                           VARCHAR (10) NOT NULL,
    [OrderCostingMasterTemplateId] VARCHAR (10) NOT NULL,
    [BuyerId]                      VARCHAR (10) NOT NULL,
    [BuyerStyleRefNo]              VARCHAR (50) NOT NULL,
    [OwnStyleRefNo]                VARCHAR (50) NOT NULL,
    [AddedBy]                      VARCHAR (30) NOT NULL,
    [AddedDate]                    DATETIME     NOT NULL,
    [AddedFromIP]                  VARCHAR (15) NOT NULL,
    [UpdatedBy]                    VARCHAR (30) NULL,
    [UpdatedDate]                  DATETIME     NULL,
    [UpdatedFromIP]                VARCHAR (15) NULL,
    CONSTRAINT [PK_OrderCostingBuyer] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([OrderCostingMasterTemplateId]) REFERENCES [dbo].[OrderCostingMasterTemplate] ([Id]),
    CONSTRAINT [FK_OrderCostingBuyer_Buyer] FOREIGN KEY ([BuyerId]) REFERENCES [HKP].[Buyer] ([Id])
);

