CREATE TABLE [dbo].[PreallocatedOT] (
    [EmpSystemID]      VARCHAR (30)    NOT NULL,
    [WorkDate]         DATETIME        NOT NULL,
    [PreallocatedOTHr] NUMERIC (18, 2) NOT NULL,
    [GroupID]          VARCHAR (10)    NULL,
    [PlantID]          VARCHAR (10)    NULL,
    [AddedBy]          VARCHAR (100)   NULL,
    [DateAdded]        DATETIME        NULL,
    [UpdatedBy]        VARCHAR (100)   NULL,
    [DateUpdated]      DATETIME        NULL,
    CONSTRAINT [PK_PreallocatedOT] PRIMARY KEY CLUSTERED ([EmpSystemID] ASC, [WorkDate] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_PreallocatedOT_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PreallocatedOT_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_PreallocatedOT_PreallocatedOT] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

