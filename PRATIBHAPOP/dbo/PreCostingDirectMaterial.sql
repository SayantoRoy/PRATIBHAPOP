﻿CREATE TABLE [dbo].[PreCostingDirectMaterial] (
    [Id]                      VARCHAR (10)    NOT NULL,
    [CostingItemId]           VARCHAR (10)    NULL,
    [Consumption]             DECIMAL (18, 5) NULL,
    [UOM]                     VARCHAR (10)    NULL,
    [Rate]                    DECIMAL (18, 5) NULL,
    [ValueLoss]               DECIMAL (18, 5) NULL,
    [GrossConsumption]        DECIMAL (18, 5) NULL,
    [GrossAmount]             DECIMAL (18, 5) NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    [CostingMasterTemplateId] VARCHAR (10)    NULL,
    [Description]             VARCHAR (250)   NULL,
    [ResponsiblePersoinId]    VARCHAR (30)    NULL,
    [SourcingType]            VARCHAR (10)    NULL,
    [IsUDApplicable]          BIT             DEFAULT ((0)) NULL,
    [Usage]                   VARCHAR (20)    NULL,
    [IsGeneric]               BIT             DEFAULT ((0)) NULL,
    [IsMandatory]             BIT             DEFAULT ((0)) NULL,
    [MaterialMasterId]        VARCHAR (30)    NULL,
    [ArticleId]               VARCHAR (10)    NULL,
    [MinimumOfQuantity]       DECIMAL (18, 4) NULL,
    [POIssueDeadLine]         INT             NULL,
    [PurchaseGroupId]         VARCHAR (10)    NULL,
    [Particulars]             VARCHAR (100)   NULL,
    [Remarks]                 VARCHAR (255)   NULL,
    [ProcurementLevel]        VARCHAR (30)    NULL,
    [BOQDays]                 DECIMAL (6, 2)  NULL,
    [DependentDate]           VARCHAR (30)    NULL,
    [BOQCriteria]             VARCHAR (30)    NULL,
    CONSTRAINT [PK_PreCostingDirectMeterial] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PurchaseGroupId]) REFERENCES [ORG].[PurchaseGroup] ([Id]),
    CONSTRAINT [FK_MasterOrderItem_Article] FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_MasterOrderItem_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_PreCostingDirectMeterial_CostingItem] FOREIGN KEY ([CostingItemId]) REFERENCES [HKP].[CostingItem] ([Id]),
    CONSTRAINT [FK_PreCostingDirectMeterial_CostingMasterTemplate] FOREIGN KEY ([CostingMasterTemplateId]) REFERENCES [dbo].[CostingMasterTemplate] ([Id]),
    CONSTRAINT [FK_PreCostingDirectMeterial_EmployeeInformation] FOREIGN KEY ([ResponsiblePersoinId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

