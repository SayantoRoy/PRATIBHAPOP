CREATE TABLE [dbo].[FinalOT] (
    [EmpSystemID] VARCHAR (30)    NOT NULL,
    [GroupID]     VARCHAR (10)    NOT NULL,
    [PlantID]     VARCHAR (10)    NOT NULL,
    [WorkDate]    DATETIME        NOT NULL,
    [TotalOTHr]   NUMERIC (18, 2) DEFAULT ((0)) NOT NULL,
    [NormalOTHr]  NUMERIC (18, 2) DEFAULT ((0)) NOT NULL,
    [ExtraOTHr]   NUMERIC (18, 2) DEFAULT ((0)) NOT NULL,
    [AttdnLock]   BIT             DEFAULT ((0)) NOT NULL,
    [AddedBy]     VARCHAR (100)   NULL,
    [DateAdded]   DATETIME        NULL,
    [UpdatedBy]   VARCHAR (100)   NULL,
    [DateUpdated] DATETIME        NULL,
    [OTDayType]   VARCHAR (5)     NULL,
    CONSTRAINT [PK_FinalOT] PRIMARY KEY CLUSTERED ([EmpSystemID] ASC, [WorkDate] ASC),
    CONSTRAINT [FK_FinalOT_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_FinalOT_FinalOT] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_FinalOT_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

