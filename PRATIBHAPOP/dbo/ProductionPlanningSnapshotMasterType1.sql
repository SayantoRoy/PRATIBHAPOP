CREATE TABLE [dbo].[ProductionPlanningSnapshotMasterType1] (
    [ID]            VARCHAR (30)  NOT NULL,
    [EntityID]      VARCHAR (10)  NULL,
    [ProcessID]     VARCHAR (10)  NULL,
    [SnapshotDate]  DATE          NULL,
    [SnapshotName]  VARCHAR (50)  NULL,
    [SnapshotDesc]  VARCHAR (255) NULL,
    [AddedBy]       VARCHAR (30)  NULL,
    [AddedDate]     DATETIME      NULL,
    [AddedFromIP]   VARCHAR (15)  NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([EntityID]) REFERENCES [ORG].[Entity] ([Id]),
    FOREIGN KEY ([ProcessID]) REFERENCES [HKP].[Process] ([Id])
);

