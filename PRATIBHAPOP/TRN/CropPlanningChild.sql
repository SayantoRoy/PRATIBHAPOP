﻿CREATE TABLE [TRN].[CropPlanningChild] (
    [Id]                   VARCHAR (20)    NOT NULL,
    [CropPlanningMasterId] VARCHAR (20)    NOT NULL,
    [CropId]               VARCHAR (20)    NOT NULL,
    [CropTypeId]           VARCHAR (20)    NOT NULL,
    [FarmerId]             VARCHAR (20)    NOT NULL,
    [FarmerPlotId]         VARCHAR (20)    NOT NULL,
    [CropArea]             DECIMAL (18, 2) NOT NULL,
    [ProductivityIndex]    DECIMAL (18, 2) NOT NULL,
    [PlanQuantity]         DECIMAL (18, 2) NOT NULL,
    [FarmerCategoryId]     VARCHAR (20)    NOT NULL,
    [Remarks]              VARCHAR (250)   NULL,
    [Active]               BIT             NOT NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    CONSTRAINT [PK_CropPlanningChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CropPlanningChild_Crop] FOREIGN KEY ([CropId]) REFERENCES [MST].[CropMaster] ([Id]),
    CONSTRAINT [FK_CropPlanningChild_CropPlanningMaster] FOREIGN KEY ([CropPlanningMasterId]) REFERENCES [TRN].[CropPlanning] ([Id]),
    CONSTRAINT [FK_CropPlanningChild_CropType] FOREIGN KEY ([CropTypeId]) REFERENCES [HKP].[CropType] ([Id]),
    CONSTRAINT [FK_CropPlanningChild_Farmer] FOREIGN KEY ([FarmerId]) REFERENCES [MST].[FarmerMaster] ([Id]),
    CONSTRAINT [FK_CropPlanningChild_FarmerPlot] FOREIGN KEY ([FarmerPlotId]) REFERENCES [MST].[FarmerMasterPlot] ([Id])
);

