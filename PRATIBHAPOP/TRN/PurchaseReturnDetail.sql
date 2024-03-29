﻿CREATE TABLE [TRN].[PurchaseReturnDetail] (
    [Id]                                 VARCHAR (30)     NOT NULL,
    [PurchaseReturnId]                   VARCHAR (30)     NOT NULL,
    [MaterialMasterId]                   VARCHAR (10)     NULL,
    [ArticleId]                          VARCHAR (10)     NULL,
    [FirstCharacteristicsId]             VARCHAR (10)     NULL,
    [FirstCharacteristicsValueId]        VARCHAR (10)     NULL,
    [SecondCharacteristicsId]            VARCHAR (10)     NULL,
    [SecondCharacteristicsValueId]       VARCHAR (10)     NULL,
    [ThirdCharacteristicsId]             VARCHAR (10)     NULL,
    [ThirdCharacteristicsValueId]        VARCHAR (10)     NULL,
    [MaterialStorageId]                  VARCHAR (10)     NULL,
    [TransactionQty]                     DECIMAL (18, 10) NOT NULL,
    [TransactionUoMId]                   VARCHAR (10)     NOT NULL,
    [BaseQty]                            DECIMAL (18, 10) NOT NULL,
    [BaseUOMId]                          VARCHAR (10)     NULL,
    [BaseUoMFactor]                      DECIMAL (18, 10) NOT NULL,
    [MaterialTranRate]                   DECIMAL (18, 10) NOT NULL,
    [MaterialTranAmount]                 DECIMAL (18, 10) NOT NULL,
    [IssueQty]                           DECIMAL (18, 10) NULL,
    [AddedBy]                            VARCHAR (30)     NOT NULL,
    [AddedDate]                          DATETIME         NOT NULL,
    [AddedFromIP]                        VARCHAR (15)     NOT NULL,
    [UpdatedBy]                          VARCHAR (30)     NULL,
    [UpdatedDate]                        DATETIME         NULL,
    [UpdatedFromIP]                      VARCHAR (15)     NULL,
    [TotalTaxAmount]                     DECIMAL (18, 10) NOT NULL,
    [TotalMaterialTranAmount]            DECIMAL (18, 10) NOT NULL,
    [TotalMaterialBooksCurrencyAmount]   DECIMAL (18, 10) NULL,
    [ChargesTranAmount]                  DECIMAL (18, 10) NOT NULL,
    [ChargesTaxTranAmount]               DECIMAL (18, 10) NULL,
    [TrnCurrencyBaseRate]                DECIMAL (18, 10) NOT NULL,
    [BooksCurrencyBaseRate]              DECIMAL (18, 10) NOT NULL,
    [CountryId]                          VARCHAR (10)     NULL,
    [POId]                               VARCHAR (10)     NULL,
    [PODetailsId]                        VARCHAR (10)     NULL,
    [BaseIssueQty]                       DECIMAL (20, 10) CONSTRAINT [DF__Inven__BaseI__21D92E4A] DEFAULT ((0)) NOT NULL,
    [ShortageQty]                        DECIMAL (18, 10) NULL,
    [RejectionQty]                       DECIMAL (18, 10) NULL,
    [ApprovedQty]                        DECIMAL (18, 10) NULL,
    [ShortageRatePercent]                DECIMAL (18, 4)  NULL,
    [ShortageValue]                      DECIMAL (18, 4)  NULL,
    [RejectRatePercent]                  DECIMAL (18, 4)  NULL,
    [RejectValue]                        DECIMAL (18, 4)  NULL,
    [RejectClamPercent]                  DECIMAL (18, 4)  NULL,
    [RequisitionId]                      VARCHAR (10)     NULL,
    [RequisitionDetailId]                VARCHAR (30)     NULL,
    [Description]                        VARCHAR (200)    NULL,
    [ShortRejFlag]                       BIT              NULL,
    [PostDrGLGeneralInfoId]              VARCHAR (10)     NULL,
    [PostDrBudgetMasterId]               VARCHAR (20)     NULL,
    [PostDrActivityId]                   VARCHAR (10)     NULL,
    [PostCRGLGeneralInfoId]              VARCHAR (10)     NULL,
    [PostCRBudgetMasterId]               VARCHAR (20)     NULL,
    [PostCRActivityId]                   VARCHAR (10)     NULL,
    [CapitalizeVoucherDetailId]          VARCHAR (80)     NULL,
    [IsAsset]                            BIT              NULL,
    [InventoryReceiveId]                 VARCHAR (10)     NULL,
    [InventoryReceiveDetailId]           VARCHAR (50)     NOT NULL,
    [PurchaseDocumentAcceptanceId]       VARCHAR (10)     NULL,
    [PurchaseDocumentAcceptanceDetailId] VARCHAR (10)     NULL,
    [InventoryMaterialId]                VARCHAR (10)     NULL,
    CONSTRAINT [PK_PurchaseReturnDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([RequisitionDetailId]) REFERENCES [TRN].[MaterialRequsitionDetails] ([Id]),
    FOREIGN KEY ([RequisitionDetailId]) REFERENCES [TRN].[MaterialRequsitionDetails] ([Id]),
    FOREIGN KEY ([RequisitionDetailId]) REFERENCES [TRN].[MaterialRequsitionDetails] ([Id]),
    FOREIGN KEY ([RequisitionDetailId]) REFERENCES [TRN].[MaterialRequsitionDetails] ([Id]),
    CONSTRAINT [fk_FirstCharacterValueId] FOREIGN KEY ([FirstCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [fk_PurchaseRetDetail_InventoryReceiveDetailId] FOREIGN KEY ([InventoryReceiveDetailId]) REFERENCES [TRN].[InventoryReceiveDetail] ([Id]),
    CONSTRAINT [FK_PurchaseRetnDetail_InventoReceive] FOREIGN KEY ([InventoryReceiveId]) REFERENCES [TRN].[InventoryReceive] ([Id]),
    CONSTRAINT [FK_PurchaseReturn_PurchaseReturn] FOREIGN KEY ([PurchaseReturnId]) REFERENCES [TRN].[PurchaseReturn] ([Id]),
    CONSTRAINT [fk_PurchaseReturnDetail_ArticleId] FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_BaseUoM] FOREIGN KEY ([BaseUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_BseUoM] FOREIGN KEY ([BaseUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_CapitalizeVoucherDetail] FOREIGN KEY ([CapitalizeVoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_CapitalVoucherDetail] FOREIGN KEY ([CapitalizeVoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_Country] FOREIGN KEY ([CountryId]) REFERENCES [SCS].[Country] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_InventoReceive] FOREIGN KEY ([InventoryReceiveId]) REFERENCES [TRN].[InventoryReceive] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_InventoryReceive] FOREIGN KEY ([InventoryReceiveId]) REFERENCES [TRN].[InventoryReceive] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_MaterialStorage] FOREIGN KEY ([MaterialStorageId]) REFERENCES [HKP].[MaterialStorage] ([Id]),
    CONSTRAINT [fk_PurchaseReturnDetail_PODetailsId] FOREIGN KEY ([PODetailsId]) REFERENCES [TRN].[PurchaseOrderDetail] ([Id]),
    CONSTRAINT [fk_PurchaseReturnDetail_POIdD1] FOREIGN KEY ([POId]) REFERENCES [TRN].[PurchaseOrder] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostCRActivity] FOREIGN KEY ([PostCRActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostCRAcvity] FOREIGN KEY ([PostCRActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostCRBudgetMasterId] FOREIGN KEY ([PostCRBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostCRBudtMasterId] FOREIGN KEY ([PostCRBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostCRGLGeneralInfoId] FOREIGN KEY ([PostCRGLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostCRGLGenInfoId] FOREIGN KEY ([PostCRGLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostDrActivity] FOREIGN KEY ([PostDrActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostDrAcvity] FOREIGN KEY ([PostDrActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostDrBudgetMasterId] FOREIGN KEY ([PostDrBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostDrBudMasterId] FOREIGN KEY ([PostDrBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostDrGLGeneInfo] FOREIGN KEY ([PostDrGLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_PostDrGLGeneralInfo] FOREIGN KEY ([PostDrGLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [Fk_PurchaseReturnDetail_RequisitionId1] FOREIGN KEY ([RequisitionId]) REFERENCES [TRN].[MaterialRequsitionMaster] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_TransacionUoM] FOREIGN KEY ([TransactionUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_PurchaseReturnDetail_TransactionUoM] FOREIGN KEY ([TransactionUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_PurcReturnDetail_Country] FOREIGN KEY ([CountryId]) REFERENCES [SCS].[Country] ([Id]),
    CONSTRAINT [fk_SecondCharacterValueId] FOREIGN KEY ([SecondCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [fk_ThirdCharacterValueId] FOREIGN KEY ([ThirdCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id])
);

