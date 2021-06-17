CREATE TABLE [TRN].[InventorySalesService] (
    [Id]                             VARCHAR (50)     NOT NULL,
    [InventorySalesId]               VARCHAR (50)     NOT NULL,
    [ServiceMasterId]                VARCHAR (12)     NOT NULL,
    [Amount]                         DECIMAL (18, 10) NOT NULL,
    [TotalTaxAmount]                 DECIMAL (18, 10) NOT NULL,
    [Description]                    VARCHAR (500)    NULL,
    [AddedBy]                        VARCHAR (30)     NOT NULL,
    [AddedDate]                      DATETIME         NOT NULL,
    [AddedFromIP]                    VARCHAR (15)     NOT NULL,
    [UpdatedBy]                      VARCHAR (30)     NULL,
    [UpdatedDate]                    DATETIME         NULL,
    [UpdatedFromIP]                  VARCHAR (15)     NULL,
    [BooksCurrencyTransactionAmount] DECIMAL (18, 2)  NULL,
    [BooksCurrencyTaxAmount]         DECIMAL (18, 2)  NULL,
    CONSTRAINT [PK_InventorySalesService] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InventorySalesService_InventorySales] FOREIGN KEY ([InventorySalesId]) REFERENCES [TRN].[InventorySales] ([Id]),
    CONSTRAINT [FK_InventorySalesService_ServiceMaster] FOREIGN KEY ([ServiceMasterId]) REFERENCES [HKP].[ServiceMaster] ([Id])
);

