CREATE TABLE [TRN].[ProductionBatchWorkCenter] (
    [Id]                      VARCHAR (30) NOT NULL,
    [RecipeMasterId]          VARCHAR (30) NULL,
    [ProductionOrderMasterId] VARCHAR (20) NULL,
    [ProductionBatchMasterId] VARCHAR (30) NULL,
    [WorkCenterMasterId]      VARCHAR (30) NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedDate]               DATETIME     NOT NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    CONSTRAINT [PK_ProductionBatchWorkCenter] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductionBatchWorkCenter_ProductionBatchMaster] FOREIGN KEY ([ProductionBatchMasterId]) REFERENCES [TRN].[ProductionOrder] ([Id]),
    CONSTRAINT [FK_ProductionBatchWorkCenter_WorkCenterMaster] FOREIGN KEY ([WorkCenterMasterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id])
);

