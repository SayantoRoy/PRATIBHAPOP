CREATE TABLE [TRN].[InventoryReceiveAdditionalTax] (
    [Id]                 VARCHAR (50)     NOT NULL,
    [TaxCodeId]          VARCHAR (10)     NULL,
    [Percentage]         DECIMAL (18, 10) NOT NULL,
    [TaxAmount]          DECIMAL (18, 10) NOT NULL,
    [AddedBy]            VARCHAR (30)     NOT NULL,
    [AddedDate]          DATETIME         NOT NULL,
    [AddedFromIP]        VARCHAR (15)     NOT NULL,
    [UpdatedBy]          VARCHAR (30)     NULL,
    [UpdatedDate]        DATETIME         NULL,
    [UpdatedFromIP]      VARCHAR (15)     NULL,
    [InventoryReceiveId] VARCHAR (10)     NOT NULL,
    [TaxCategoryId]      VARCHAR (10)     NULL,
    CONSTRAINT [PK_InventoryReceiveAdditionalTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InventoryReceiveAdditional_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id]),
    CONSTRAINT [FK_InventoryReceiveAdditionalTax_InventoryReceive] FOREIGN KEY ([InventoryReceiveId]) REFERENCES [TRN].[InventoryReceive] ([Id]),
    CONSTRAINT [FK_InventoryReceiveAdditionalTax_TaxCodeId] FOREIGN KEY ([TaxCodeId]) REFERENCES [MST].[TaxCode] ([Id])
);

