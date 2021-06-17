CREATE TABLE [dbo].[RosterEffectiveDate] (
    [Id]            VARCHAR (30)  NOT NULL,
    [RPHeaderId]    VARCHAR (30)  NOT NULL,
    [EffectiveDate] DATE          NOT NULL,
    [AddedBy]       VARCHAR (100) NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (100) NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    CONSTRAINT [PK_RosterPatternPlanning] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RosterPatternPlanning_RosterPatternHeader] FOREIGN KEY ([RPHeaderId]) REFERENCES [dbo].[RosterPatternHeader] ([Id])
);

