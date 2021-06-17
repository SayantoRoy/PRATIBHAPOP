CREATE TABLE [MST].[OperationSubProcess] (
    [Id]                 VARCHAR (23) NOT NULL,
    [OperationId]        VARCHAR (20) NOT NULL,
    [OperationProcessId] VARCHAR (10) NOT NULL,
    [SubProcessId]       VARCHAR (10) NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    [ProcessId]          VARCHAR (10) NOT NULL,
    CONSTRAINT [PK_OperationSubProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OperationSubProcess_Operation] FOREIGN KEY ([OperationId]) REFERENCES [MST].[Operation] ([Id]),
    CONSTRAINT [FK_OperationSubProcess_OperationProcess] FOREIGN KEY ([OperationProcessId]) REFERENCES [MST].[OperationProcess] ([Id]),
    CONSTRAINT [FK_OperationSubProcess_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_OperationSubProcess_SubProcess] FOREIGN KEY ([SubProcessId]) REFERENCES [HKP].[SubProcess] ([Id])
);

