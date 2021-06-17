CREATE TABLE [dbo].[PlantCalendar] (
    [ID]              INT             IDENTITY (1, 1) NOT NULL,
    [PlantId]         VARCHAR (10)    NULL,
    [WorkingDate]     DATE            NULL,
    [DayType]         VARCHAR (10)    NULL,
    [HolidayCategory] VARCHAR (10)    NULL,
    [WorkingHours]    DECIMAL (10, 4) NULL,
    [OTHours]         DECIMAL (10, 4) NULL,
    [AddedBy]         VARCHAR (30)    NULL,
    [AddedDate]       DATETIME        NULL,
    [AddedFromIP]     VARCHAR (15)    NULL,
    [UpdatedBy]       VARCHAR (30)    NULL,
    [UpdatedDate]     DATETIME        NULL,
    [UpdatedFromIP]   VARCHAR (15)    NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([HolidayCategory]) REFERENCES [SCS].[HolidayCategory] ([Id]),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

