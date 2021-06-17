﻿CREATE TABLE [dbo].[BOQDetail] (
    [Id]                             VARCHAR (30)    NOT NULL,
    [BOQId]                          VARCHAR (30)    NULL,
    [MasterOrderItemId]              VARCHAR (10)    NULL,
    [SalesOrderId]                   VARCHAR (20)    NULL,
    [MaterialMasterId]               VARCHAR (30)    NULL,
    [ArticleId]                      VARCHAR (10)    NULL,
    [ProcessId]                      VARCHAR (10)    NULL,
    [UoMId]                          VARCHAR (10)    NULL,
    [VendorId]                       VARCHAR (10)    NULL,
    [RMDescription]                  VARCHAR (255)   NULL,
    [RMCustomerSpec]                 VARCHAR (100)   NULL,
    [RMVendorSpec]                   VARCHAR (100)   NULL,
    [FirstCharacteristicsValueId]    VARCHAR (10)    NULL,
    [SecondCharacteristicsValueId]   VARCHAR (10)    NULL,
    [ThirdCharacteristicsValueId]    VARCHAR (10)    NULL,
    [ParentId]                       VARCHAR (30)    NULL,
    [isParent]                       BIT             NULL,
    [isChild]                        BIT             NULL,
    [SKUDesc]                        VARCHAR (100)   NULL,
    [OrderQty]                       DECIMAL (18, 4) NULL,
    [PlanOrderQty]                   DECIMAL (18, 4) NULL,
    [IncompleteMaterial]             BIT             NULL,
    [RequiredQtyApproved]            BIT             NULL,
    [Consumption]                    DECIMAL (18, 6) NULL,
    [WastagePer]                     DECIMAL (18, 4) NULL,
    [BOMQty]                         DECIMAL (18, 4) NULL,
    [RequiredQty]                    DECIMAL (18, 4) NULL,
    [Sequence]                       DECIMAL (8, 2)  NULL,
    [AddedBy]                        VARCHAR (30)    NOT NULL,
    [AddedDate]                      DATETIME        NOT NULL,
    [AddedFromIP]                    VARCHAR (15)    NOT NULL,
    [UpdatedBy]                      VARCHAR (30)    NULL,
    [UpdatedDate]                    DATETIME        NULL,
    [UpdatedFromIP]                  VARCHAR (15)    NULL,
    [FGFirstCharacteristicsValueId]  VARCHAR (10)    NULL,
    [FGSecondCharacteristicsValueId] VARCHAR (10)    NULL,
    [FGThirdCharacteristicsValueId]  VARCHAR (10)    NULL,
    [BaseUoMId]                      VARCHAR (10)    NULL,
    [POUoMId]                        VARCHAR (10)    NULL,
    [BOMQtyBase]                     DECIMAL (18, 4) NULL,
    [RequiredQtyBase]                DECIMAL (18, 4) NULL,
    [RequiredQtyPO]                  DECIMAL (18, 4) NULL,
    [CurrencyId]                     VARCHAR (10)    NULL,
    [Rate]                           DECIMAL (18, 8) NULL,
    [DestinationId]                  VARCHAR (10)    NULL,
    [IsDestinationSpecific]          BIT             NULL,
    [IsPOSpecific]                   BIT             NULL,
    [SalesOrderSpecificMaterial]     BIT             NULL,
    [CustomerPOId]                   VARCHAR (20)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    FOREIGN KEY ([BaseUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    FOREIGN KEY ([BOQId]) REFERENCES [dbo].[BOQ] ([Id]),
    FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    FOREIGN KEY ([CustomerPOId]) REFERENCES [TRN].[CustomerPO] ([Id]),
    FOREIGN KEY ([DestinationId]) REFERENCES [MST].[Destination] ([Id]),
    FOREIGN KEY ([FirstCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    FOREIGN KEY ([MasterOrderItemId]) REFERENCES [TRN].[MasterOrderItem] ([Id]),
    FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    FOREIGN KEY ([POUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    FOREIGN KEY ([SalesOrderId]) REFERENCES [TRN].[SalesOrder] ([Id]),
    FOREIGN KEY ([SecondCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    FOREIGN KEY ([ThirdCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    FOREIGN KEY ([UoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    FOREIGN KEY ([VendorId]) REFERENCES [HKP].[Party] ([Id])
);

