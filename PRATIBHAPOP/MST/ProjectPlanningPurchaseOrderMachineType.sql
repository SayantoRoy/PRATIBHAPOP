CREATE TABLE [MST].[ProjectPlanningPurchaseOrderMachineType] (
    [Id]                                   VARCHAR (10)    NOT NULL,
    [ProjectPlanningPurchaseOrderId]       VARCHAR (10)    NOT NULL,
    [ProjectPlanningPurchaseOrderDetailId] VARCHAR (10)    NOT NULL,
    [ProjectPlanningMachineTypeId]         VARCHAR (10)    NOT NULL,
    [POMachineTypeUomId]                   VARCHAR (10)    NULL,
    [ReverseQuantity]                      DECIMAL (18, 4) NULL,
    [Quantity]                             DECIMAL (18, 4) NOT NULL,
    [AddedBy]                              VARCHAR (30)    NOT NULL,
    [AddedDate]                            DATETIME        NOT NULL,
    [AddedFromIP]                          VARCHAR (15)    NOT NULL,
    [UpdatedBy]                            VARCHAR (30)    NULL,
    [UpdatedDate]                          DATETIME        NULL,
    [UpdatedFromIP]                        VARCHAR (15)    NULL,
    [AssetItemId]                          VARCHAR (10)    DEFAULT ('201710') NOT NULL,
    CONSTRAINT [PK_ProjectPlanningPurchaseOrderMachineType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProjectPlanningPurchaseOrderMachineType_ProjectPlanningMachineType] FOREIGN KEY ([ProjectPlanningMachineTypeId]) REFERENCES [MST].[ProjectPlanningMachineType] ([Id]),
    CONSTRAINT [FK_ProjectPlanningPurchaseOrderMachineType_ProjectPlanningPurchaseOrder] FOREIGN KEY ([ProjectPlanningPurchaseOrderId]) REFERENCES [MST].[ProjectPlanningPurchaseOrder] ([Id]),
    CONSTRAINT [FK_ProjectPlanningPurchaseOrderMachineType_ProjectPlanningPurchaseOrderDetail] FOREIGN KEY ([ProjectPlanningPurchaseOrderDetailId]) REFERENCES [MST].[ProjectPlanningPurchaseOrderDetail] ([Id])
);

