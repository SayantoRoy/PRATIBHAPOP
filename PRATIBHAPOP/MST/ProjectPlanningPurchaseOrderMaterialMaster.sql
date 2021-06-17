CREATE TABLE [MST].[ProjectPlanningPurchaseOrderMaterialMaster] (
    [Id]                                   VARCHAR (10)    NOT NULL,
    [ProjectPlanningId]                    VARCHAR (10)    NULL,
    [ProjectPlanningPurchaseOrderId]       VARCHAR (10)    NOT NULL,
    [ProjectPlanningPurchaseOrderDetailId] VARCHAR (10)    NOT NULL,
    [ProjectPlanningMaterialMasterId]      VARCHAR (10)    NOT NULL,
    [MaterialMasterId]                     VARCHAR (30)    NULL,
    [ReverseQuantity]                      DECIMAL (18, 4) NULL,
    [Quantity]                             DECIMAL (18, 4) NOT NULL,
    [Rate]                                 DECIMAL (18, 4) NOT NULL,
    [AlternativeUomId]                     VARCHAR (10)    NULL,
    [BaseUOMId]                            VARCHAR (10)    NULL,
    [AddedBy]                              VARCHAR (30)    NOT NULL,
    [AddedDate]                            DATETIME        NOT NULL,
    [AddedFromIP]                          VARCHAR (15)    NOT NULL,
    [UpdatedBy]                            VARCHAR (30)    NULL,
    [UpdatedDate]                          DATETIME        NULL,
    [UpdatedFromIP]                        VARCHAR (15)    NULL,
    CONSTRAINT [PK_ProjectPlanningPurchaseOrderMaterialMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProjectPlanningPurchaseOrderMaterialMaster_ProjectPlanningMaterialMaster] FOREIGN KEY ([ProjectPlanningMaterialMasterId]) REFERENCES [MST].[ProjectPlanningMaterialMaster] ([Id]),
    CONSTRAINT [FK_ProjectPlanningPurchaseOrderMaterialMaster_ProjectPlanningPurchaseOrder] FOREIGN KEY ([ProjectPlanningPurchaseOrderId]) REFERENCES [MST].[ProjectPlanningPurchaseOrder] ([Id]),
    CONSTRAINT [FK_ProjectPlanningPurchaseOrderMaterialMaster_ProjectPlanningPurchaseOrderDetail] FOREIGN KEY ([ProjectPlanningPurchaseOrderDetailId]) REFERENCES [MST].[ProjectPlanningPurchaseOrderDetail] ([Id])
);

