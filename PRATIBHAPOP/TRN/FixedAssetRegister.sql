﻿CREATE TABLE [TRN].[FixedAssetRegister] (
    [Id]                      VARCHAR (30)    NOT NULL,
    [CompanyGroupId]          VARCHAR (10)    NOT NULL,
    [CompanyId]               VARCHAR (10)    NOT NULL,
    [PlantId]                 VARCHAR (10)    NOT NULL,
    [MaterialMasterArticleId] VARCHAR (30)    NULL,
    [MaterialMasterId]        VARCHAR (30)    NULL,
    [VendorId]                VARCHAR (10)    NULL,
    [BrandId]                 VARCHAR (10)    NULL,
    [CountryOfOriginId]       VARCHAR (10)    NULL,
    [CurrencyId]              VARCHAR (10)    NOT NULL,
    [FABaseCurrencyId]        VARCHAR (10)    NULL,
    [FAGroupCurrencyId]       VARCHAR (10)    NULL,
    [FAHardCurrencyId]        VARCHAR (10)    NULL,
    [ADBaseCurrencyId]        VARCHAR (10)    NULL,
    [ADGroupCurrencyId]       VARCHAR (10)    NULL,
    [ADHardCurrencyId]        VARCHAR (10)    NULL,
    [FABaseAmount]            DECIMAL (18, 4) NULL,
    [FAGroupAmount]           DECIMAL (18, 4) NULL,
    [FAHardAmount]            DECIMAL (18, 4) NULL,
    [ADBaseAmount]            DECIMAL (18, 4) NULL,
    [ADGroupAmount]           DECIMAL (18, 4) NULL,
    [ADHardAmount]            DECIMAL (18, 4) NULL,
    [RFId]                    VARCHAR (10)    NULL,
    [LifeTime]                DECIMAL (18)    NULL,
    [Model]                   VARCHAR (100)   NULL,
    [SerialNo]                VARCHAR (50)    NULL,
    [InvoiceNo]               VARCHAR (100)   NULL,
    [InvoiceDate]             DATETIME        NULL,
    [CapitalizationDate]      DATETIME        NULL,
    [Price]                   DECIMAL (18, 4) NULL,
    [YearOfManufacture]       INT             NULL,
    [YearOfInstallation]      INT             NULL,
    [IsForProduction]         BIT             NOT NULL,
    [IsOpeningBalance]        BIT             NULL,
    [IsFinancial]             BIT             NOT NULL,
    [Archive]                 BIT             NOT NULL,
    [RFIdAddedDate]           DATETIME        NULL,
    [RFIdAddedBy]             VARCHAR (30)    NULL,
    [RFIdUpdatedDate]         DATETIME        NULL,
    [RFIdUpdatedBy]           VARCHAR (30)    NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    [Description]             VARCHAR (250)   NULL,
    [IsAUC]                   BIT             NULL,
    [FABudgetMasterId]        VARCHAR (20)    NULL,
    [FAActivityId]            VARCHAR (10)    NULL,
    [ADBudgetMasterId]        VARCHAR (20)    NULL,
    [ADActivityId]            VARCHAR (10)    NULL,
    [CapitalizeRegisterNo]    VARCHAR (50)    NULL,
    [FixedAssetMasterId]      VARCHAR (30)    NULL,
    [AssetNo]                 VARCHAR (50)    NULL,
    [Year]                    VARCHAR (4)     NULL,
    CONSTRAINT [PK_FixedAssetItem] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FixedAssetRegister_ADActivity] FOREIGN KEY ([ADActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_ADBudgetMaster] FOREIGN KEY ([ADBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Brand] FOREIGN KEY ([BrandId]) REFERENCES [SCS].[Brand] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Country] FOREIGN KEY ([CountryOfOriginId]) REFERENCES [SCS].[Country] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Currency1] FOREIGN KEY ([FABaseCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Currency2] FOREIGN KEY ([FAGroupCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Currency3] FOREIGN KEY ([FAHardCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Currency4] FOREIGN KEY ([ADBaseCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Currency5] FOREIGN KEY ([ADGroupCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Currency6] FOREIGN KEY ([ADHardCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_FAActivity] FOREIGN KEY ([FAActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_FABudgetMaster] FOREIGN KEY ([FABudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_FixedAssetMaster] FOREIGN KEY ([FixedAssetMasterId]) REFERENCES [MST].[FixedAssetMaster] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_FixedAssetRegister] FOREIGN KEY ([Id]) REFERENCES [TRN].[FixedAssetRegister] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Party] FOREIGN KEY ([VendorId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_FixedAssetRegister_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);
