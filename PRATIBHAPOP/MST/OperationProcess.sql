CREATE TABLE [MST].[OperationProcess] (
    [Id]            VARCHAR (10) NOT NULL,
    [OperationId]   VARCHAR (20) NOT NULL,
    [ProcessId]     VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_OperationProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OperationProcess_Operation] FOREIGN KEY ([OperationId]) REFERENCES [MST].[Operation] ([Id]),
    CONSTRAINT [FK_OperationProcess_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id])
);

