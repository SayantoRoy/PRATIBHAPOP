CREATE TABLE [SCS].[CalendarWeekDay] (
    [Id]               VARCHAR (10) NOT NULL,
    [PlantId]          VARCHAR (10) NULL,
    [YearlyCalendarId] VARCHAR (30) NOT NULL,
    [FromDate]         DATE         NULL,
    [ToDate]           DATE         NULL,
    [Month]            INT          NOT NULL,
    [WeekNo]           INT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_CalendarWeekDay] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CalendarWeekDay_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_CalendarWeekDay_YearlyCalendar] FOREIGN KEY ([YearlyCalendarId]) REFERENCES [dbo].[YearlyCalendar] ([Id])
);

