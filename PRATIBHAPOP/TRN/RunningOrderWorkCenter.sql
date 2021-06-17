CREATE TABLE [TRN].[RunningOrderWorkCenter] (
    [Id]                   VARCHAR (30)    NOT NULL,
    [ProductionOrderId]    VARCHAR (30)    NULL,
    [WorkCenterMasterId]   VARCHAR (30)    NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    [isResidualApplicable] BIT             DEFAULT ((0)) NULL,
    [Qty]                  DECIMAL (18, 4) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__RunningOr__Produ__3F47FEF2] FOREIGN KEY ([ProductionOrderId]) REFERENCES [TRN].[ProductionOrder] ([Id]),
    CONSTRAINT [FK__RunningOr__WorkC__403C232B] FOREIGN KEY ([WorkCenterMasterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id])
);

