CREATE TABLE [TRN].[GRNAcceptanceMap] (
    [Id]                           VARCHAR (50)     NOT NULL,
    [GRNId]                        VARCHAR (10)     NOT NULL,
    [PurchaseDocumentAcceptanceId] VARCHAR (10)     NULL,
    [Qty]                          DECIMAL (18, 10) NULL,
    [AddedBy]                      VARCHAR (30)     NOT NULL,
    [AddedDate]                    DATETIME         NOT NULL,
    [AddedFromIP]                  VARCHAR (15)     NOT NULL,
    [UpdatedBy]                    VARCHAR (30)     NULL,
    [UpdatedDate]                  DATETIME         NULL,
    [UpdatedFromIP]                VARCHAR (15)     NULL,
    [InvoiceId]                    VARCHAR (50)     NULL,
    CONSTRAINT [PK_GRNAcceptanceMap] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_GRNAcceptanceMap_GRN] FOREIGN KEY ([GRNId]) REFERENCES [TRN].[InventoryReceive] ([Id]),
    CONSTRAINT [FK_GRNAcceptanceMap_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [TRN].[Invoice] ([Id]),
    CONSTRAINT [FK_GRNAcceptanceMap_PurchaseDocumentAcceptance] FOREIGN KEY ([PurchaseDocumentAcceptanceId]) REFERENCES [TRN].[PurchaseDocAcceptance] ([Id])
);

