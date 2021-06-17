﻿CREATE TABLE [dbo].[QuickBOQ] (
    [Id]                    VARCHAR (30)    NOT NULL,
    [Sequence]              DECIMAL (18, 2) NULL,
    [MasterOrderItemId]     VARCHAR (10)    NULL,
    [MaterialMasterId]      VARCHAR (30)    NULL,
    [ArticleId]             VARCHAR (10)    NULL,
    [CostingItemId]         VARCHAR (10)    NULL,
    [UoMId]                 VARCHAR (10)    NULL,
    [Description]           VARCHAR (250)   NULL,
    [Remarks]               VARCHAR (250)   NULL,
    [NetConsumptionPerUnit] DECIMAL (18, 2) NULL,
    [ValueLossPercentage]   DECIMAL (18, 2) NULL,
    [GrossConsumption]      DECIMAL (18, 2) NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    [MaterialCostPerUnit]   DECIMAL (18, 2) DEFAULT ((0)) NULL,
    [ProcessGroup]          VARCHAR (50)    NULL,
    [ProcessId]             VARCHAR (10)    NULL,
    [ResponsiblePersonId]   VARCHAR (30)    NULL,
    [IsOutSource]           BIT             DEFAULT ((0)) NOT NULL,
    [JobWorkType]           VARCHAR (50)    NULL,
    [EntityIdWithinCompany] VARCHAR (10)    NULL,
    [EntityIdWithinGroup]   VARCHAR (10)    NULL,
    [VendorId]              VARCHAR (10)    NULL,
    CONSTRAINT [PK_QuickBOQ] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_QuickBOQ_CostingItem] FOREIGN KEY ([CostingItemId]) REFERENCES [HKP].[CostingItem] ([Id]),
    CONSTRAINT [FK_QuickBOQ_EntityWithinCompany] FOREIGN KEY ([EntityIdWithinCompany]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_QuickBOQ_EntityWithinGroup] FOREIGN KEY ([EntityIdWithinGroup]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_QuickBOQ_MasterOrderItem] FOREIGN KEY ([MasterOrderItemId]) REFERENCES [TRN].[MasterOrderItem] ([Id]),
    CONSTRAINT [FK_QuickBOQ_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_QuickBOQ_MaterialMasterArticle] FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_QuickBOQ_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_QuickBOQ_ResponsiblePerson] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_QuickBOQ_UnitOfMeasurement] FOREIGN KEY ([UoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_QuickBOQ_Vendor] FOREIGN KEY ([VendorId]) REFERENCES [HKP].[Party] ([Id])
);
