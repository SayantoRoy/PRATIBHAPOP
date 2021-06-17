CREATE TABLE [TRN].[ProductionOrderWorkCenter] (
    [Id]                   VARCHAR (30) NOT NULL,
    [ProductionOrderId]    VARCHAR (30) NULL,
    [WorkCenterMasterId]   VARCHAR (30) NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    [isResidualApplicable] BIT          CONSTRAINT [DF_ProductionOrderWorkCenter_isResidualApplicable] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_ProductionOrderWorkCenter] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductionOrderWorkCenter_ProductionOrder] FOREIGN KEY ([ProductionOrderId]) REFERENCES [TRN].[ProductionOrder] ([Id]),
    CONSTRAINT [FK_ProductionOrderWorkCenter_WorkCenterMaster] FOREIGN KEY ([WorkCenterMasterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id])
);

