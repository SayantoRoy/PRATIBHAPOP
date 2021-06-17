CREATE TABLE [MST].[ProjectPlanningMachineType] (
    [Id]                      VARCHAR (10) NOT NULL,
    [ProjectPlanningId]       VARCHAR (10) NOT NULL,
    [ProjectPlanningDetailId] VARCHAR (10) NOT NULL,
    [FixedAssetMasterId]      VARCHAR (30) NULL,
    [MachineTypeUomId]        VARCHAR (10) NULL,
    [Quantity]                INT          NOT NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedDate]               DATETIME     NOT NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    [AssetItemId]             VARCHAR (10) DEFAULT ('201710') NOT NULL,
    CONSTRAINT [PK__ProjectP__3214EC0753C63852] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProjectPlanningMachineType_FixedAssetMaster] FOREIGN KEY ([FixedAssetMasterId]) REFERENCES [MST].[FixedAssetMaster] ([Id]),
    CONSTRAINT [FK_ProjectPlanningMachineType_ProjectPlanning] FOREIGN KEY ([ProjectPlanningId]) REFERENCES [MST].[ProjectPlanning] ([Id]),
    CONSTRAINT [FK_ProjectPlanningMachineType_ProjectPlanningDetail] FOREIGN KEY ([ProjectPlanningDetailId]) REFERENCES [MST].[ProjectPlanningDetail] ([Id]),
    CONSTRAINT [FK_ProjectPlanningMachineType_UnitOfMeasurement] FOREIGN KEY ([MachineTypeUomId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

