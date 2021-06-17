CREATE TABLE [MST].[MaterialMasterMachineProcess] (
    [Id]               VARCHAR (10) NOT NULL,
    [MaterialMasterId] VARCHAR (30) NOT NULL,
    [ProcessId]        VARCHAR (10) NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_AssetItemProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AssetItemProcess_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_MaterialMasterMachineProcess_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id])
);

