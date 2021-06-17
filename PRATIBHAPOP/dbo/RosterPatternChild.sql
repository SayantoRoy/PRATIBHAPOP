CREATE TABLE [dbo].[RosterPatternChild] (
    [Id]                VARCHAR (30)  NOT NULL,
    [RPHeaderId]        VARCHAR (30)  NOT NULL,
    [ShiftDefinitionID] VARCHAR (30)  NOT NULL,
    [ShiftSequence]     INT           NOT NULL,
    [AddedBy]           VARCHAR (100) NOT NULL,
    [AddedDate]         DATETIME      NOT NULL,
    [AddedFromIP]       VARCHAR (15)  NOT NULL,
    [UpdatedBy]         VARCHAR (100) NULL,
    [UpdatedDate]       DATETIME      NULL,
    [UpdatedFromIP]     VARCHAR (15)  NULL,
    CONSTRAINT [PK_RosterPatternChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RosterPatternChild_RosterPatternHeader] FOREIGN KEY ([RPHeaderId]) REFERENCES [dbo].[RosterPatternHeader] ([Id]),
    CONSTRAINT [FK_RosterPatternChild_ShiftDefination] FOREIGN KEY ([ShiftDefinitionID]) REFERENCES [dbo].[ShiftDefination] ([SystemID])
);

