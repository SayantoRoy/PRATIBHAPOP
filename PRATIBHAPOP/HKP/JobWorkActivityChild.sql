CREATE TABLE [HKP].[JobWorkActivityChild] (
    [Id]                VARCHAR (50) NOT NULL,
    [JobWorkActivityId] VARCHAR (50) NOT NULL,
    [JobWorkItemId]     VARCHAR (50) NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_JobWorkActivityChild_1] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkActivityId] FOREIGN KEY ([JobWorkActivityId]) REFERENCES [HKP].[JobWorkActivity] ([Id]),
    CONSTRAINT [FK_JobWorkItemId] FOREIGN KEY ([JobWorkItemId]) REFERENCES [HKP].[JobWorkItem] ([Id])
);

