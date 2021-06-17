CREATE TABLE [SCS].[TestingStandardDetail] (
    [Id]                   VARCHAR (10) NOT NULL,
    [TestingId]            VARCHAR (10) NULL,
    [TestingStandardId]    VARCHAR (10) NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    [Value]                VARCHAR (50) NULL,
    [OriginatingProcessId] VARCHAR (10) NULL,
    [TestingProcessId]     VARCHAR (10) NULL,
    CONSTRAINT [PK_TestingStandardDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TestingStandardDetail_OriginatingProcess] FOREIGN KEY ([OriginatingProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_TestingStandardDetail_Testing] FOREIGN KEY ([TestingId]) REFERENCES [SCS].[Testing] ([Id]),
    CONSTRAINT [FK_TestingStandardDetail_TestingProcess] FOREIGN KEY ([TestingProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_TestingStandardDetail_TestingStandard] FOREIGN KEY ([TestingStandardId]) REFERENCES [SCS].[TestingStandard] ([Id])
);

