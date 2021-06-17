CREATE TABLE [TRN].[CommitmentValueAddedProcess] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [CommitmentId]   VARCHAR (10) NOT NULL,
    [ProcessId]      VARCHAR (10) NOT NULL,
    [SubProcessId]   VARCHAR (10) NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CommitmentValueAddedProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CommitmentValueAddedProcess_Commitment] FOREIGN KEY ([CommitmentId]) REFERENCES [TRN].[Commitment] ([Id]),
    CONSTRAINT [FK_CommitmentValueAddedProcess_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CommitmentValueAddedProcess_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_CommitmentValueAddedProcess_SubProcess] FOREIGN KEY ([SubProcessId]) REFERENCES [HKP].[SubProcess] ([Id])
);

