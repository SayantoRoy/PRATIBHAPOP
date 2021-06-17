CREATE TABLE [MST].[JobWorkValueAddedMasterProcess] (
    [Id]                        VARCHAR (50) NOT NULL,
    [JobWorkValueAddedMasterId] VARCHAR (50) NOT NULL,
    [ProcessId]                 VARCHAR (50) NOT NULL,
    [AddedBy]                   VARCHAR (30) NOT NULL,
    [AddedDate]                 DATETIME     NOT NULL,
    [AddedFromIP]               VARCHAR (15) NOT NULL,
    [UpdatedBy]                 VARCHAR (30) NULL,
    [UpdatedDate]               DATETIME     NULL,
    [UpdatedFromIP]             VARCHAR (15) NULL,
    CONSTRAINT [PK_JobWorkValueAddedMasterProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkValueAddedMasterProcess_JobWorkValueAddedMasterId] FOREIGN KEY ([JobWorkValueAddedMasterId]) REFERENCES [MST].[JobWorkValueAddedMaster] ([Id])
);

