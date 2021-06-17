CREATE TABLE [MST].[JobWorkTransformationMasterProcess] (
    [Id]                            VARCHAR (50) NOT NULL,
    [JobWorkTransformationMasterId] VARCHAR (50) NOT NULL,
    [ProcessId]                     VARCHAR (10) NOT NULL,
    [AddedBy]                       VARCHAR (30) NOT NULL,
    [AddedDate]                     DATETIME     NOT NULL,
    [AddedFromIP]                   VARCHAR (15) NOT NULL,
    [UpdatedBy]                     VARCHAR (30) NULL,
    [UpdatedDate]                   DATETIME     NULL,
    [UpdatedFromIP]                 VARCHAR (15) NULL,
    CONSTRAINT [PK_JobWorkTransformationMasterProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkTransformationMaster_JobWorkTransformationMasterId] FOREIGN KEY ([JobWorkTransformationMasterId]) REFERENCES [MST].[JobWorkTransformationMaster] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationMaster_ProcessId] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id])
);

