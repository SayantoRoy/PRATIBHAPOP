CREATE TABLE [MST].[ProjectPlanningPurchaseOrderDetail] (
    [Id]                             VARCHAR (10) NOT NULL,
    [ProjectPlanningPurchaseOrderId] VARCHAR (10) NOT NULL,
    [ProjectPlanningDetailId]        VARCHAR (10) NULL,
    [AddedBy]                        VARCHAR (30) NOT NULL,
    [AddedDate]                      DATETIME     NOT NULL,
    [AddedFromIP]                    VARCHAR (15) NOT NULL,
    [UpdatedBy]                      VARCHAR (30) NULL,
    [UpdatedDate]                    DATETIME     NULL,
    [UpdatedFromIP]                  VARCHAR (15) NULL,
    CONSTRAINT [PK__FAPurcha__3214EC0707623BDC] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FixedAssetPurchaseOrderDetail_FixedAssetPurchaseOrder] FOREIGN KEY ([ProjectPlanningPurchaseOrderId]) REFERENCES [MST].[ProjectPlanningPurchaseOrder] ([Id]),
    CONSTRAINT [FK_ProjectPlanningPurchaseOrderDetail_ProjectPlanningDetail] FOREIGN KEY ([ProjectPlanningDetailId]) REFERENCES [MST].[ProjectPlanningDetail] ([Id])
);

