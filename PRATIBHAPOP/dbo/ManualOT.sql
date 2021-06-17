CREATE TABLE [dbo].[ManualOT] (
    [EmpSystemID] VARCHAR (30)    NOT NULL,
    [GroupID]     VARCHAR (10)    NOT NULL,
    [PlantID]     VARCHAR (10)    NOT NULL,
    [WorkDate]    DATETIME        NOT NULL,
    [OTDayType]   VARCHAR (50)    NULL,
    [TotalOTHr]   NUMERIC (18, 2) DEFAULT ((0)) NOT NULL,
    [NormalOTHr]  NUMERIC (18, 2) DEFAULT ((0)) NOT NULL,
    [ExtraOTHr]   NUMERIC (18, 2) DEFAULT ((0)) NOT NULL,
    [AttdnLock]   BIT             DEFAULT ((0)) NOT NULL,
    [AddedBy]     VARCHAR (100)   NULL,
    [DateAdded]   DATETIME        NULL,
    [UpdatedBy]   VARCHAR (100)   NULL,
    [DateUpdated] DATETIME        NULL,
    CONSTRAINT [PK_ManualOT] PRIMARY KEY CLUSTERED ([EmpSystemID] ASC, [WorkDate] ASC),
    CONSTRAINT [FK_ManualOT_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ManualOT_ManualOT] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ManualOT_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

