﻿CREATE TABLE [TRN].[InventorySalesDetail] (
    [Id]                             VARCHAR (50)     NOT NULL,
    [InventorySalesId]               VARCHAR (50)     NOT NULL,
    [InventoryMaterialId]            VARCHAR (10)     NOT NULL,
    [TransactionQty]                 DECIMAL (18, 10) NOT NULL,
    [BaseUOMId]                      VARCHAR (10)     NULL,
    [AvgRate]                        DECIMAL (18, 10) NOT NULL,
    [AvgAmount]                      DECIMAL (18, 10) NOT NULL,
    [PolicyRate]                     DECIMAL (18, 10) NOT NULL,
    [PolicyAmount]                   DECIMAL (18, 10) NOT NULL,
    [Policy]                         VARCHAR (15)     NOT NULL,
    [AddedBy]                        VARCHAR (30)     NOT NULL,
    [AddedDate]                      DATETIME         NOT NULL,
    [AddedFromIP]                    VARCHAR (15)     NOT NULL,
    [UpdatedBy]                      VARCHAR (30)     NULL,
    [UpdatedDate]                    DATETIME         NULL,
    [UpdatedFromIP]                  VARCHAR (15)     NULL,
    [BaseQty]                        DECIMAL (20, 10) DEFAULT ((0)) NOT NULL,
    [InventoryReceiveId]             VARCHAR (10)     NULL,
    [InventoryReceiveDetailId]       VARCHAR (50)     NULL,
    [TransactionUoMId]               VARCHAR (10)     NULL,
    [ActivityId]                     VARCHAR (10)     NULL,
    [BudgetMasterId]                 VARCHAR (20)     NULL,
    [Remarks]                        VARCHAR (250)    NULL,
    [PostDrGLGeneralInfoId]          VARCHAR (10)     NULL,
    [PostDrBudgetMasterId]           VARCHAR (20)     NULL,
    [PostDrActivityId]               VARCHAR (10)     NULL,
    [PostCRGLGeneralInfoId]          VARCHAR (10)     NULL,
    [PostCRBudgetMasterId]           VARCHAR (20)     NULL,
    [PostCRActivityId]               VARCHAR (10)     NULL,
    [CostCenterId]                   VARCHAR (10)     NULL,
    [IsAsset]                        BIT              NULL,
    [Comments]                       VARCHAR (500)    NULL,
    [SalesRate]                      DECIMAL (18, 10) NULL,
    [TotalSalesAmount]               DECIMAL (18, 2)  NULL,
    [BooksCurrencyTransactionAmount] DECIMAL (18, 2)  NULL,
    CONSTRAINT [PK_InventorySalesDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InventorySalesDetail_[PostCRBudgetMasterId] FOREIGN KEY ([PostCRBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_CostCenterId] FOREIGN KEY ([CostCenterId]) REFERENCES [ORG].[CostCenter] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_InventoryMaterial] FOREIGN KEY ([InventoryMaterialId]) REFERENCES [TRN].[InventoryMaterial] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_InventoryReceive] FOREIGN KEY ([InventoryReceiveId]) REFERENCES [TRN].[InventoryReceive] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_InventorySalesId] FOREIGN KEY ([InventorySalesId]) REFERENCES [TRN].[InventorySales] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_PostCRActivity] FOREIGN KEY ([PostCRActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_PostCRGLGeneralInfoId] FOREIGN KEY ([PostCRGLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_PostDrActivity] FOREIGN KEY ([PostDrActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_PostDrBudgetMasterId] FOREIGN KEY ([PostDrBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_PostDrGLGeneralInfo] FOREIGN KEY ([PostDrGLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail_TransactionUoM] FOREIGN KEY ([TransactionUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail1_InventoryMaterial] FOREIGN KEY ([InventoryMaterialId]) REFERENCES [TRN].[InventoryMaterial] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail1_InventoryReceive] FOREIGN KEY ([InventoryReceiveId]) REFERENCES [TRN].[InventoryReceive] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail1_InventoryReceiveDetail] FOREIGN KEY ([InventoryReceiveDetailId]) REFERENCES [TRN].[InventoryReceiveDetail] ([Id]),
    CONSTRAINT [FK_InventorySalesDetail1_PostCRGLGeneralInfoId] FOREIGN KEY ([PostCRGLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id])
);

