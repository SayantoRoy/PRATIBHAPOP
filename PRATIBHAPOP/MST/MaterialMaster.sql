﻿CREATE TABLE [MST].[MaterialMaster] (
    [Id]                    VARCHAR (30)    NOT NULL,
    [CompanyGroupId]        VARCHAR (10)    NOT NULL,
    [TestingStandardId]     VARCHAR (10)    NULL,
    [MaterialGroupMasterId] VARCHAR (10)    NOT NULL,
    [HSNCodeId]             VARCHAR (10)    NULL,
    [ProductMasterId]       VARCHAR (10)    NULL,
    [PurchaseOrderUOMId]    VARCHAR (10)    NULL,
    [SalesOrderUOMId]       VARCHAR (10)    NULL,
    [BaseUOMId]             VARCHAR (10)    NOT NULL,
    [StockUOMId]            VARCHAR (10)    NOT NULL,
    [MaterialSubCategoryId] VARCHAR (10)    NULL,
    [MaterialCategoryId]    VARCHAR (10)    NULL,
    [BudgetMasterId]        VARCHAR (20)    NULL,
    [Sequence]              DECIMAL (18, 2) NOT NULL,
    [Code]                  VARCHAR (100)   NULL,
    [ShortName]             VARCHAR (100)   NULL,
    [StandardName]          VARCHAR (100)   NULL,
    [UserName]              VARCHAR (100)   NULL,
    [WithSKU]               BIT             NOT NULL,
    [Description]           VARCHAR (250)   NULL,
    [IsInventory]           BIT             NOT NULL,
    [IsExpenseOut]          BIT             NOT NULL,
    [IsAsset]               BIT             NOT NULL,
    [Image]                 VARCHAR (50)    NULL,
    [Active]                BIT             NOT NULL,
    [Archive]               BIT             NOT NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    [IsOriginApplicable]    BIT             NOT NULL,
    [ActivityId]            VARCHAR (10)    NULL,
    [SkillId]               VARCHAR (10)    NULL,
    [FixedAssetMasterId]    VARCHAR (30)    NULL,
    [IsRegular]             BIT             NULL,
    [EnumType]              VARCHAR (15)    NULL,
    [MaterialMasterTypeId]  VARCHAR (20)    NULL,
    CONSTRAINT [PK_MaterialMaster_1] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMaster_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMaster_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_MaterialMaster_FixedAssetMaster] FOREIGN KEY ([FixedAssetMasterId]) REFERENCES [MST].[FixedAssetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMaster_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id]),
    CONSTRAINT [FK_MaterialMaster_MaterialCategory] FOREIGN KEY ([MaterialCategoryId]) REFERENCES [HKP].[MaterialCategory] ([Id]),
    CONSTRAINT [FK_MaterialMaster_MaterialGroupMaster] FOREIGN KEY ([MaterialGroupMasterId]) REFERENCES [MST].[MaterialGroupMaster] ([Id]),
    CONSTRAINT [FK_MaterialMaster_MaterialMasterType] FOREIGN KEY ([MaterialMasterTypeId]) REFERENCES [HKP].[MaterialMasterType] ([Id]),
    CONSTRAINT [FK_MaterialMaster_MaterialSubCategory] FOREIGN KEY ([MaterialSubCategoryId]) REFERENCES [HKP].[MaterialSubCategory] ([Id]),
    CONSTRAINT [FK_MaterialMaster_ProductMaster] FOREIGN KEY ([ProductMasterId]) REFERENCES [MST].[ProductMaster] ([Id]),
    CONSTRAINT [FK_MaterialMaster_Skill] FOREIGN KEY ([SkillId]) REFERENCES [HKP].[Skill] ([Id]),
    CONSTRAINT [FK_MaterialMaster_TestingStandard] FOREIGN KEY ([TestingStandardId]) REFERENCES [SCS].[TestingStandard] ([Id]),
    CONSTRAINT [FK_MaterialMaster_UnitOfMeasurementBaseUOM] FOREIGN KEY ([BaseUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_MaterialMaster_UnitOfMeasurementPurchaseOrder] FOREIGN KEY ([PurchaseOrderUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_MaterialMaster_UnitOfMeasurementSalesOrder] FOREIGN KEY ([SalesOrderUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_MaterialMaster_UnitOfMeasurementStockUOM] FOREIGN KEY ([StockUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);
