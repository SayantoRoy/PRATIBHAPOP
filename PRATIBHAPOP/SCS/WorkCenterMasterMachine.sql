CREATE TABLE [SCS].[WorkCenterMasterMachine] (
    [Id]                 VARCHAR (30) NOT NULL,
    [WorkCenterMasterId] VARCHAR (30) NULL,
    [FixedAssetMasterId] VARCHAR (30) NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_WorkCenterMachine] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WorkCenterMachine_WorkCenterMaster] FOREIGN KEY ([WorkCenterMasterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id])
);

