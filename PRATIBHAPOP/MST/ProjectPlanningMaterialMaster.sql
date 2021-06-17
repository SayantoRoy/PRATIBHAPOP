CREATE TABLE [MST].[ProjectPlanningMaterialMaster] (
    [Id]                      VARCHAR (10)    NOT NULL,
    [ProjectPlanningId]       VARCHAR (10)    NOT NULL,
    [ProjectPlanningDetailId] VARCHAR (10)    NOT NULL,
    [MaterialMasterId]        VARCHAR (30)    NOT NULL,
    [BaseUOMId]               VARCHAR (10)    NULL,
    [PlanningUOMId]           VARCHAR (10)    NULL,
    [Quantity]                DECIMAL (18, 4) NULL,
    [MaterialMasterType]      VARCHAR (30)    NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    CONSTRAINT [PK_ProjectPlanningMaterialMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProjectPlanningMaterialMaster_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_ProjectPlanningMaterialMaster_ProjectPlanning] FOREIGN KEY ([ProjectPlanningId]) REFERENCES [MST].[ProjectPlanning] ([Id]),
    CONSTRAINT [FK_ProjectPlanningMaterialMaster_ProjectPlanningDetail] FOREIGN KEY ([ProjectPlanningDetailId]) REFERENCES [MST].[ProjectPlanningDetail] ([Id]),
    CONSTRAINT [FK_ProjectPlanningMaterialMaster_ProjectPlanningMaterialMaster] FOREIGN KEY ([Id]) REFERENCES [MST].[ProjectPlanningMaterialMaster] ([Id]),
    CONSTRAINT [FK_ProjectPlanningMaterialMaster_UnitOfMeasurement] FOREIGN KEY ([PlanningUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_ProjectPlanningMaterialMaster_UnitOfMeasurement1] FOREIGN KEY ([BaseUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

