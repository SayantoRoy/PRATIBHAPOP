CREATE TABLE [TRN].[SalesOrderInvoicePackingList] (
    [Id]                            VARCHAR (30) NOT NULL,
    [SalesOrderInvoiceMasterId]     VARCHAR (30) NULL,
    [SalesOrderPackingListMasterId] VARCHAR (30) NULL,
    [AddedBy]                       VARCHAR (30) NOT NULL,
    [AddedDate]                     DATETIME     NOT NULL,
    [AddedFromIP]                   VARCHAR (15) NOT NULL,
    [UpdatedBy]                     VARCHAR (30) NULL,
    [UpdatedDate]                   DATETIME     NULL,
    [UpdatedFromIP]                 VARCHAR (15) NULL,
    CONSTRAINT [PK_SalesOrderInvoicePackingList] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalesOrderInvoicePackingList_SalesOrderInvoiceMaster] FOREIGN KEY ([SalesOrderInvoiceMasterId]) REFERENCES [TRN].[SalesOrderInvoiceMaster] ([Id]),
    CONSTRAINT [FK_SalesOrderInvoicePackingList_SalesOrderPackingListMaster] FOREIGN KEY ([SalesOrderPackingListMasterId]) REFERENCES [TRN].[SalesOrderPackingListMaster] ([Id])
);

