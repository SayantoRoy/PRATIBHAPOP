CREATE TABLE [dbo].[DayWiseRoster] (
    [Id]             VARCHAR (100) NOT NULL,
    [RosterMasterId] VARCHAR (30)  NULL,
    [CompanyGroupId] VARCHAR (10)  NULL,
    [PlantId]        VARCHAR (10)  NULL,
    [WorkDate]       DATETIME      NOT NULL,
    [DayCount]       INT           NOT NULL,
    [ToReprocess]    BIT           CONSTRAINT [DF__DayWiseRo__IsPro__710A430F] DEFAULT ((0)) NOT NULL,
    [AddedBy]        VARCHAR (100) NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [UpdatedBy]      VARCHAR (100) NULL,
    [UpdatedDate]    DATETIME      NULL,
    CONSTRAINT [PK__DayWiseR__3214EC070035CEFB] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__DayWiseRo__Compa__6F21FA9D] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK__DayWiseRo__Plant__70161ED6] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK__DayWiseRo__Roste__6E2DD664] FOREIGN KEY ([RosterMasterId]) REFERENCES [dbo].[ShiftRosterMaster] ([SystemID])
);

