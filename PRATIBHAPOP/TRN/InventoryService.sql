CREATE TABLE [TRN].[InventoryService] (
    [Id]                 VARCHAR (50)     NOT NULL,
    [InventoryReceiveId] VARCHAR (10)     NOT NULL,
    [ServiceMasterId]    VARCHAR (12)     NOT NULL,
    [Amount]             DECIMAL (18, 10) NOT NULL,
    [TotalTaxAmount]     DECIMAL (18, 10) NOT NULL,
    [AddedBy]            VARCHAR (30)     NOT NULL,
    [AddedDate]          DATETIME         NOT NULL,
    [AddedFromIP]        VARCHAR (15)     NOT NULL,
    [UpdatedBy]          VARCHAR (30)     NULL,
    [UpdatedDate]        DATETIME         NULL,
    [UpdatedFromIP]      VARCHAR (15)     NULL,
    [POID]               VARCHAR (10)     NULL,
    [POServiceId]        VARCHAR (10)     NULL,
    CONSTRAINT [PK_InventoryService] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InventoryService_InventoryReceive] FOREIGN KEY ([InventoryReceiveId]) REFERENCES [TRN].[InventoryReceive] ([Id]),
    CONSTRAINT [FK_InventoryService_ServiceMaster] FOREIGN KEY ([ServiceMasterId]) REFERENCES [HKP].[ServiceMaster] ([Id])
);

