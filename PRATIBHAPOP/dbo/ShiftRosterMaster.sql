CREATE TABLE [dbo].[ShiftRosterMaster] (
    [SystemID]               VARCHAR (30)  NOT NULL,
    [GroupID]                VARCHAR (10)  NULL,
    [PlantID]                VARCHAR (10)  NULL,
    [ShiftRosterName]        VARCHAR (50)  NULL,
    [ShiftRosterDescription] VARCHAR (500) NULL,
    [AddedBy]                VARCHAR (100) NOT NULL,
    [DateAdded]              DATETIME      NOT NULL,
    [UpdatedBy]              VARCHAR (100) NULL,
    [DateUpdated]            DATETIME      NULL,
    [ChangeAfterDayLength]   VARCHAR (30)  NULL,
    [RosteringPattern]       VARCHAR (30)  DEFAULT ('IndividualWeekOff') NOT NULL,
    [WeekDays]               VARCHAR (30)  NULL,
    [MultiDate]              VARCHAR (30)  NULL,
    [EffectiveDate]          DATE          NULL,
    CONSTRAINT [PK_ShiftRosterMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_ShiftRosterMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ShiftRosterMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

