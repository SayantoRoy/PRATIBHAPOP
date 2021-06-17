CREATE TABLE [TRN].[PurchaseReturnTax] (
    [Id]                     VARCHAR (50)     NOT NULL,
    [PurchaseReturnDetailId] VARCHAR (30)     NULL,
    [TaxCategoryId]          VARCHAR (10)     NOT NULL,
    [HSNCodeId]              VARCHAR (10)     NULL,
    [Percentage]             DECIMAL (18, 10) NOT NULL,
    [TaxAmount]              DECIMAL (18, 10) NOT NULL,
    [AddedBy]                VARCHAR (30)     NOT NULL,
    [AddedDate]              DATETIME         NOT NULL,
    [AddedFromIP]            VARCHAR (15)     NOT NULL,
    [UpdatedBy]              VARCHAR (30)     NULL,
    [UpdatedDate]            DATETIME         NULL,
    [UpdatedFromIP]          VARCHAR (15)     NULL,
    [InventoryServiceId]     VARCHAR (50)     NULL,
    [PurchaseReturnId]       VARCHAR (30)     NOT NULL,
    CONSTRAINT [PK_PurchaseReturnTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PurchaseReturnTax_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id]),
    CONSTRAINT [FK_PurchaseReturnTax_InventoryReceive] FOREIGN KEY ([PurchaseReturnId]) REFERENCES [TRN].[PurchaseReturn] ([Id]),
    CONSTRAINT [FK_PurchaseReturnTax_InventoryReceiveDetail] FOREIGN KEY ([PurchaseReturnDetailId]) REFERENCES [TRN].[PurchaseReturnDetail] ([Id]),
    CONSTRAINT [FK_PurchaseReturnTax_InventService] FOREIGN KEY ([InventoryServiceId]) REFERENCES [TRN].[InventoryService] ([Id]),
    CONSTRAINT [FK_PurchaseReturnTax_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id]),
    CONSTRAINT [FK_PurchReturnTax_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id])
);

