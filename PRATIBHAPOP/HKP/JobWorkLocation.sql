CREATE TABLE [HKP].[JobWorkLocation] (
    [Id]                   VARCHAR (50)  NOT NULL,
    [EntityId]             VARCHAR (10)  NULL,
    [LocationName]         VARCHAR (250) NULL,
    [LocationCode]         VARCHAR (150) NULL,
    [StoreLocationId]      VARCHAR (10)  NULL,
    [ResponsiblePerson1Id] VARCHAR (30)  NULL,
    [ResponsiblePerson2Id] VARCHAR (30)  NULL,
    [Remarks]              VARCHAR (250) NULL,
    [IsActive]             BIT           NOT NULL,
    [AddedBy]              VARCHAR (30)  NOT NULL,
    [AddedDate]            DATETIME      NOT NULL,
    [AddedFromIP]          VARCHAR (15)  NOT NULL,
    [UpdatedBy]            VARCHAR (30)  NULL,
    [UpdatedDate]          DATETIME      NULL,
    [UpdatedFromIP]        VARCHAR (15)  NULL,
    CONSTRAINT [PK_JobWorkLocation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkLocation_EntityId] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_JobWorkLocation_ResponsiblePerson1] FOREIGN KEY ([ResponsiblePerson1Id]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_JobWorkLocation_ResponsiblePerson2] FOREIGN KEY ([ResponsiblePerson2Id]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

