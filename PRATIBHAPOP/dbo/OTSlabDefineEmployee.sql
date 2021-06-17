CREATE TABLE [dbo].[OTSlabDefineEmployee] (
    [SystemID]            VARCHAR (30)    NOT NULL,
    [GroupID]             VARCHAR (10)    NULL,
    [PlantID]             VARCHAR (10)    NULL,
    [EmpSystemID]         VARCHAR (30)    NOT NULL,
    [DayType]             VARCHAR (5)     NULL,
    [FromDate]            DATETIME        NULL,
    [ToDate]              DATETIME        NULL,
    [firstSlab]           DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [IsOTExtentNextSlab]  BIT             DEFAULT ((0)) NOT NULL,
    [IsTotalWorkTimeAsOT] BIT             DEFAULT ((0)) NOT NULL,
    [AddedBy]             VARCHAR (100)   NULL,
    [DateAdded]           DATETIME        NULL,
    [UpdatedBy]           VARCHAR (100)   NULL,
    [DateUpdated]         DATETIME        NULL,
    CONSTRAINT [PK_OTSlabDefineEmployee] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_OTSlabDefineEmployee_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_OTSlabDefineEmployee_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_OTSlabDefineEmployee_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

