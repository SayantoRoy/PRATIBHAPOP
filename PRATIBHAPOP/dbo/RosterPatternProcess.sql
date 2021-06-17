CREATE TABLE [dbo].[RosterPatternProcess] (
    [Id]                VARCHAR (30)  NOT NULL,
    [PlantId]           VARCHAR (10)  NOT NULL,
    [RPHeaderId]        VARCHAR (30)  NOT NULL,
    [WorkDate]          DATE          NOT NULL,
    [ShiftDefinationID] VARCHAR (30)  NOT NULL,
    [ShiftSequence]     INT           NOT NULL,
    [AddedBy]           VARCHAR (100) NOT NULL,
    [DateAdded]         DATETIME      NOT NULL,
    [AddedFromIP]       VARCHAR (20)  NOT NULL,
    [UpdatedBy]         VARCHAR (100) NULL,
    [DateUpdated]       DATETIME      NULL,
    [UpdatedFromIP]     VARCHAR (20)  NULL,
    CONSTRAINT [PK_RosterPatternProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RosterPatternProcess_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_RosterPatternProcess_RosterPatternHeader] FOREIGN KEY ([RPHeaderId]) REFERENCES [dbo].[RosterPatternHeader] ([Id]),
    CONSTRAINT [FK_RosterPatternProcess_ShiftDefination] FOREIGN KEY ([ShiftDefinationID]) REFERENCES [dbo].[ShiftDefination] ([SystemID])
);

