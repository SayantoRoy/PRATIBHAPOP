CREATE TABLE [dbo].[ProcessAndInventorySequence] (
    [Id]             INT          IDENTITY (1, 1) NOT NULL,
    [ProcessId]      VARCHAR (10) NULL,
    [SFGInventoryId] VARCHAR (10) NULL,
    [PlantId]        VARCHAR (10) NULL,
    [Sequence]       INT          NULL,
    [Active]         BIT          NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    FOREIGN KEY ([SFGInventoryId]) REFERENCES [HKP].[SFGInventory] ([Id])
);

