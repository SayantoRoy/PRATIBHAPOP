CREATE TABLE [dbo].[TaskMasterPlantAssignment] (
    [Id]            INT          IDENTITY (1, 1) NOT NULL,
    [TaskMasterId]  VARCHAR (30) NULL,
    [PlantId]       VARCHAR (10) NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    FOREIGN KEY ([TaskMasterId]) REFERENCES [dbo].[TaskMaster] ([Id]),
    FOREIGN KEY ([TaskMasterId]) REFERENCES [dbo].[TaskMaster] ([Id]),
    FOREIGN KEY ([TaskMasterId]) REFERENCES [dbo].[TaskMaster] ([Id])
);

