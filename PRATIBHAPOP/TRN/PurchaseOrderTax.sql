CREATE TABLE [TRN].[PurchaseOrderTax] (
    [Id]                       VARCHAR (20)     NOT NULL,
    [InventoryReceiveDetailId] VARCHAR (10)     NULL,
    [TaxCategoryId]            VARCHAR (10)     NULL,
    [HSNCodeId]                VARCHAR (10)     NULL,
    [Percentage]               DECIMAL (18, 10) NOT NULL,
    [TaxAmount]                DECIMAL (18, 10) NOT NULL,
    [AddedBy]                  VARCHAR (30)     NOT NULL,
    [AddedDate]                DATETIME         NOT NULL,
    [AddedFromIP]              VARCHAR (15)     NOT NULL,
    [UpdatedBy]                VARCHAR (30)     NULL,
    [UpdatedDate]              DATETIME         NULL,
    [UpdatedFromIP]            VARCHAR (15)     NULL,
    [InventoryServiceId]       VARCHAR (10)     NULL,
    [InventoryReceiveId]       VARCHAR (10)     NOT NULL,
    CONSTRAINT [PK_PurchaseOrderTax] PRIMARY KEY CLUSTERED ([Id] ASC)
);

