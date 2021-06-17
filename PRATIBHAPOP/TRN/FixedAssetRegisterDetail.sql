CREATE TABLE [TRN].[FixedAssetRegisterDetail] (
    [Id]                      VARCHAR (50)     NOT NULL,
    [CapitalizeRegisterNo]    VARCHAR (50)     NULL,
    [InventoryIssueHistoryId] VARCHAR (100)    NOT NULL,
    [Qty]                     DECIMAL (18, 10) NOT NULL,
    [Amount]                  DECIMAL (18, 10) NOT NULL,
    [AddedBy]                 VARCHAR (30)     NOT NULL,
    [AddedDate]               DATETIME         NOT NULL,
    [AddedFromIP]             VARCHAR (15)     NOT NULL,
    [UpdatedBy]               VARCHAR (30)     NULL,
    [UpdatedDate]             DATETIME         NULL,
    [UpdatedFromIP]           VARCHAR (15)     NULL,
    CONSTRAINT [PK_FixedAssetRegisterDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FixedAssetRegisterDetail_InventoryIssueHistory] FOREIGN KEY ([InventoryIssueHistoryId]) REFERENCES [TRN].[InventoryIssueHistory] ([Id])
);

