CREATE TABLE [dbo].[WeekOffEffectiveDate] (
    [Id]            VARCHAR (30)  NOT NULL,
    [WOHeaderId]    VARCHAR (30)  NOT NULL,
    [EffectiveDate] DATE          NOT NULL,
    [AddedBy]       VARCHAR (100) NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (100) NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    CONSTRAINT [PK_WeekOffEffectiveDate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WeekOffEffectiveDate_WeekOffHeaderId] FOREIGN KEY ([WOHeaderId]) REFERENCES [dbo].[WeekOffHeader] ([Id])
);

