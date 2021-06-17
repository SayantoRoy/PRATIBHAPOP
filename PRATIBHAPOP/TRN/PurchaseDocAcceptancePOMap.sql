CREATE TABLE [TRN].[PurchaseDocAcceptancePOMap] (
    [Id]                      VARCHAR (10) NOT NULL,
    [PurchaseDocAcceptanceId] VARCHAR (10) NOT NULL,
    [POId]                    VARCHAR (10) NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedDate]               DATETIME     NOT NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    CONSTRAINT [PK_MPurchaseDocAcceptancePOMap] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PurchaseDocAcceptancePOMap_PurchaseDocAcceptance] FOREIGN KEY ([PurchaseDocAcceptanceId]) REFERENCES [TRN].[PurchaseDocAcceptance] ([Id]),
    CONSTRAINT [FK_PurchaseDocAcceptancePOMap_PurchaseOrder] FOREIGN KEY ([POId]) REFERENCES [TRN].[PurchaseOrder] ([Id])
);

