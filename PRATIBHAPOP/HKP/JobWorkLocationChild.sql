CREATE TABLE [HKP].[JobWorkLocationChild] (
    [Id]                VARCHAR (50) NOT NULL,
    [JobWorkLocationId] VARCHAR (50) NOT NULL,
    [JobWorkActivityId] VARCHAR (50) NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_JobWorkLocationChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkLocationChild_JobWorkActivityId] FOREIGN KEY ([JobWorkActivityId]) REFERENCES [HKP].[JobWorkActivity] ([Id]),
    CONSTRAINT [FK_JobWorkLocationChild_JobWorkLocationId] FOREIGN KEY ([JobWorkLocationId]) REFERENCES [HKP].[JobWorkLocation] ([Id])
);

