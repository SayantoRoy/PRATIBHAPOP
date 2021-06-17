CREATE TABLE [TRN].[POGGRNMap] (
    [Id]             VARCHAR (50) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [CompanyId]      VARCHAR (10) NOT NULL,
    [PlantId]        VARCHAR (10) NOT NULL,
    [GRNId]          VARCHAR (10) NOT NULL,
    [PoId]           VARCHAR (10) NOT NULL,
    [PoDetailId]     VARCHAR (10) NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_POGGRNMap] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_POGGRNMap] FOREIGN KEY ([GRNId]) REFERENCES [TRN].[InventoryReceive] ([Id]),
    CONSTRAINT [FK_POGGRNMap_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_POGGRNMap_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_POGGRNMap_Party] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_POGGRNMapPoDetailId] FOREIGN KEY ([PoDetailId]) REFERENCES [TRN].[PurchaseOrderDetail] ([Id]),
    CONSTRAINT [FK_POGGRNMapPoId] FOREIGN KEY ([PoId]) REFERENCES [TRN].[PurchaseOrder] ([Id])
);

