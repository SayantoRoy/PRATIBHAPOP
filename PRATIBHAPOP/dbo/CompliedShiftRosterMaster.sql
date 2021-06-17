CREATE TABLE [dbo].[CompliedShiftRosterMaster] (
    [Id]                     VARCHAR (10)  NOT NULL,
    [GroupID]                VARCHAR (10)  NULL,
    [PlantID]                VARCHAR (10)  NULL,
    [Code]                   VARCHAR (15)  NULL,
    [ShiftRosterName]        VARCHAR (50)  NULL,
    [ShiftRosterDescription] VARCHAR (500) NULL,
    [AddedBy]                VARCHAR (100) NOT NULL,
    [DateAdded]              DATETIME      NOT NULL,
    [UpdatedBy]              VARCHAR (100) NULL,
    [DateUpdated]            DATETIME      NULL,
    CONSTRAINT [PK_CompliedShiftRosterMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompliedShiftRosterMaster_CompliedShiftRosterMaster] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompliedShiftRosterMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

