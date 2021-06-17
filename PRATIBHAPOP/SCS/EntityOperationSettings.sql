CREATE TABLE [SCS].[EntityOperationSettings] (
    [Id]            VARCHAR (10) NOT NULL,
    [PlantId]       VARCHAR (10) NOT NULL,
    [EntityId]      VARCHAR (10) NOT NULL,
    [OperationId]   VARCHAR (20) NOT NULL,
    [NoOfEmployee]  INT          NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_EntityOperationSettings] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EntityOperationSettings_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_EntityOperationSettings_Operation] FOREIGN KEY ([OperationId]) REFERENCES [MST].[Operation] ([Id]),
    CONSTRAINT [FK_EntityOperationSettings_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

