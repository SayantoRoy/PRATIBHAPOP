﻿CREATE TABLE [dbo].[ProductionPlanningSnapshot2Type1] (
    [ID]                                       INT             IDENTITY (1, 1) NOT NULL,
    [ProductionOrderID]                        VARCHAR (30)    NULL,
    [WorkCenterMasterId]                       VARCHAR (30)    NULL,
    [MaterialMasterId]                         VARCHAR (30)    NULL,
    [EntityID]                                 VARCHAR (10)    NULL,
    [ProcessID]                                VARCHAR (10)    NULL,
    [ProductionDate]                           DATETIME        NULL,
    [Quantity]                                 DECIMAL (18, 4) NULL,
    [ProductionHours]                          DECIMAL (18, 4) NULL,
    [isBuildUp]                                BIT             DEFAULT ((0)) NULL,
    [isStyleChange]                            BIT             DEFAULT ((0)) NULL,
    [BlockNo]                                  INT             DEFAULT ((0)) NULL,
    [ActualTarget]                             DECIMAL (18, 4) NULL,
    [ActualProduction]                         DECIMAL (18, 4) NULL,
    [isProductionConfirmed]                    BIT             DEFAULT ((0)) NULL,
    [AddedBy]                                  VARCHAR (30)    NULL,
    [AddedDate]                                DATETIME        NULL,
    [AddedFromIP]                              VARCHAR (15)    NULL,
    [UpdatedBy]                                VARCHAR (30)    NULL,
    [UpdatedDate]                              DATETIME        NULL,
    [UpdatedFromIP]                            VARCHAR (15)    NULL,
    [ProductionPlanningSnapshot2MasterType1Id] VARCHAR (30)    NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([EntityID]) REFERENCES [ORG].[Entity] ([Id]),
    FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    FOREIGN KEY ([ProcessID]) REFERENCES [HKP].[Process] ([Id]),
    FOREIGN KEY ([ProductionOrderID]) REFERENCES [TRN].[ProductionOrder] ([Id]),
    CONSTRAINT [FK__Productio__WorkC__TA78A20E8D] FOREIGN KEY ([WorkCenterMasterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id]),
    CONSTRAINT [FK_ProductionPlanningSnapshot2MasterType1Id] FOREIGN KEY ([ProductionPlanningSnapshot2MasterType1Id]) REFERENCES [dbo].[ProductionPlanningSnapshot2MasterType1] ([ID])
);

