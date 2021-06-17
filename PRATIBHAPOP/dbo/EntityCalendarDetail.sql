CREATE TABLE [dbo].[EntityCalendarDetail] (
    [Id]               VARCHAR (30) NOT NULL,
    [CompanyGroupId]   VARCHAR (10) NULL,
    [PlantId]          VARCHAR (10) NULL,
    [EntityId]         VARCHAR (10) NULL,
    [EntityCalendarId] VARCHAR (30) NULL,
    [OffDayDate]       DATETIME     NULL,
    [DayName]          VARCHAR (30) NULL,
    [IsIncentiveLock]  BIT          NOT NULL,
    [DayLengthType]    VARCHAR (30) NOT NULL,
    [WorkingTime]      INT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_EntityCalenderDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EntityCalendarDetail_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_EntityCalendarDetail_EntityCalendar] FOREIGN KEY ([EntityCalendarId]) REFERENCES [SCS].[EntityCalendar] ([Id]),
    CONSTRAINT [FK_EntityCalendarDetail_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

