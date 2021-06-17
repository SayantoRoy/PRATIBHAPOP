CREATE TABLE [MST].[MaterialGroupProductionProcessGroup] (
    [Id]                       VARCHAR (20) NOT NULL,
    [MaterialGroupMasterId]    VARCHAR (10) NOT NULL,
    [ProductionProcessGroupId] VARCHAR (10) NOT NULL,
    [InputId]                  VARCHAR (10) NULL,
    [Sequence]                 INT          NOT NULL,
    [AddedBy]                  VARCHAR (30) NOT NULL,
    [AddedDate]                DATETIME     NOT NULL,
    [AddedFromIP]              VARCHAR (15) NULL,
    [UpdatedBy]                VARCHAR (30) NULL,
    [UpdatedDate]              DATETIME     NULL,
    [UpdatedFromIP]            VARCHAR (15) NULL,
    CONSTRAINT [PK_MaterialGroupProductionProcessGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialGroupProductionProcessGroup_MaterialGroupMaster] FOREIGN KEY ([MaterialGroupMasterId]) REFERENCES [MST].[MaterialGroupMaster] ([Id]),
    CONSTRAINT [FK_MaterialGroupProductionProcessGroup_ProductionProcessGroup] FOREIGN KEY ([ProductionProcessGroupId]) REFERENCES [HKP].[ProductionProcessGroup] ([Id])
);

