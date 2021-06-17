CREATE TABLE [TRN].[ProductionBatchEntity] (
    [Id]                      VARCHAR (30) NOT NULL,
    [ProductionOrderMasterId] VARCHAR (20) NULL,
    [ProductionBatchMasterId] VARCHAR (30) NULL,
    [EntityId]                VARCHAR (10) NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedDate]               DATETIME     NOT NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    CONSTRAINT [PK_ProductionBatchEntity] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductionBatchEntity_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_ProductionBatchEntity_ProductionBatchMaster] FOREIGN KEY ([ProductionBatchMasterId]) REFERENCES [TRN].[ProductionOrder] ([Id])
);

