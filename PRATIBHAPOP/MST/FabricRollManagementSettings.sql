CREATE TABLE [MST].[FabricRollManagementSettings] (
    [Id]                      VARCHAR (10)    NOT NULL,
    [MaterialMasterId]        VARCHAR (30)    NOT NULL,
    [BlanketLengthBeforeWash] DECIMAL (18, 2) NOT NULL,
    [BlanketWidthBeforeWash]  DECIMAL (18, 2) NOT NULL,
    [Characteristics1Id]      VARCHAR (10)    NULL,
    [Characteristics2Id]      VARCHAR (10)    NULL,
    [Characteristics3Id]      VARCHAR (10)    NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    CONSTRAINT [PK_FabricRollManagementSettings] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FabricRollManagementSettings_Characteristics1] FOREIGN KEY ([Characteristics1Id]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_FabricRollManagementSettings_Characteristics2] FOREIGN KEY ([Characteristics2Id]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_FabricRollManagementSettings_Characteristics3] FOREIGN KEY ([Characteristics3Id]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_FabricRollManagementSettings_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id])
);

