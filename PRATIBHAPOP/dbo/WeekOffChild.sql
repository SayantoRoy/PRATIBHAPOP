CREATE TABLE [dbo].[WeekOffChild] (
    [Id]            VARCHAR (30)    NOT NULL,
    [WOHeaderId]    VARCHAR (30)    NOT NULL,
    [WOSequence]    DECIMAL (18, 2) NOT NULL,
    [Day]           VARCHAR (30)    NOT NULL,
    [DayType]       VARCHAR (30)    NOT NULL,
    [AddedBy]       VARCHAR (100)   NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (100)   NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_WeekOffChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WeekOffChild_WeekOffHeaderId] FOREIGN KEY ([WOHeaderId]) REFERENCES [dbo].[WeekOffHeader] ([Id])
);

