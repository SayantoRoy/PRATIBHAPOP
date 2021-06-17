CREATE TABLE [TRN].[InventoryTransferHistory] (
    [Id]                       VARCHAR (100)    NOT NULL,
    [InventoryReceiveDetailId] VARCHAR (50)     NOT NULL,
    [Qty]                      DECIMAL (18, 10) NOT NULL,
    [Rate]                     DECIMAL (18, 10) NOT NULL,
    [TotalAmount]              DECIMAL (18, 10) NULL,
    [AddedBy]                  VARCHAR (30)     NOT NULL,
    [AddedDate]                DATETIME         NOT NULL,
    [AddedFromIP]              VARCHAR (15)     NOT NULL,
    [UpdatedBy]                VARCHAR (30)     NULL,
    [UpdatedDate]              DATETIME         NULL,
    [UpdatedFromIP]            VARCHAR (15)     NULL,
    [IsCapitalize]             BIT              NULL,
    CONSTRAINT [PK_InventoryTransferHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InventoryTransferHistory_InventoryReceiveDetail] FOREIGN KEY ([InventoryReceiveDetailId]) REFERENCES [TRN].[InventoryReceiveDetail] ([Id])
);

