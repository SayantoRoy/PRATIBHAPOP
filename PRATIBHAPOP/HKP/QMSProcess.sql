CREATE TABLE [HKP].[QMSProcess] (
    [Id]                  VARCHAR (10) NOT NULL,
    [QMSActivityMasterId] VARCHAR (10) NOT NULL,
    [ProcessId]           VARCHAR (10) NOT NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    CONSTRAINT [PK_QMSProcess] PRIMARY KEY CLUSTERED ([Id] ASC)
);

