CREATE TABLE [TRN].[InventoryReceiveTax] (
    [Id]                       VARCHAR (50)     NOT NULL,
    [InventoryReceiveDetailId] VARCHAR (50)     NULL,
    [TaxCategoryId]            VARCHAR (10)     NOT NULL,
    [HSNCodeId]                VARCHAR (10)     NULL,
    [Percentage]               DECIMAL (18, 10) NOT NULL,
    [TaxAmount]                DECIMAL (18, 10) NOT NULL,
    [AddedBy]                  VARCHAR (30)     NOT NULL,
    [AddedDate]                DATETIME         NOT NULL,
    [AddedFromIP]              VARCHAR (15)     NOT NULL,
    [UpdatedBy]                VARCHAR (30)     NULL,
    [UpdatedDate]              DATETIME         NULL,
    [UpdatedFromIP]            VARCHAR (15)     NULL,
    [InventoryServiceId]       VARCHAR (50)     NULL,
    [InventoryReceiveId]       VARCHAR (10)     NOT NULL,
    CONSTRAINT [PK_InventoryReceiveTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InventoryReceiveTax_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id]),
    CONSTRAINT [FK_InventoryReceiveTax_InventoryReceive] FOREIGN KEY ([InventoryReceiveId]) REFERENCES [TRN].[InventoryReceive] ([Id]),
    CONSTRAINT [FK_InventoryReceiveTax_InventoryReceiveDetail] FOREIGN KEY ([InventoryReceiveDetailId]) REFERENCES [TRN].[InventoryReceiveDetail] ([Id]),
    CONSTRAINT [FK_InventoryReceiveTax_InventoryService] FOREIGN KEY ([InventoryServiceId]) REFERENCES [TRN].[InventoryService] ([Id]),
    CONSTRAINT [FK_InventoryReceiveTax_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id])
);

