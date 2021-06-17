CREATE TABLE [MST].[MaterialMasterBusinessProcess] (
    [Id]                INT          IDENTITY (1, 1) NOT NULL,
    [MaterialMasterId]  VARCHAR (30) NOT NULL,
    [BusinessProcessId] VARCHAR (10) NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_MaterialMasterBusinessProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterBusinessProcess_BusinessProcess] FOREIGN KEY ([BusinessProcessId]) REFERENCES [SCS].[BusinessProcess] ([Id]),
    CONSTRAINT [FK_MaterialMasterBusinessProcess_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id])
);

