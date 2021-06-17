CREATE TABLE [dbo].[EmpDateWiseJobLocation] (
    [SystemID]      VARCHAR (30)  NOT NULL,
    [EmpSystemID]   VARCHAR (30)  NOT NULL,
    [JobLcSystemID] VARCHAR (30)  NOT NULL,
    [EffectiveDate] DATETIME      NOT NULL,
    [AddedBy]       VARCHAR (100) NOT NULL,
    [DateAdded]     DATETIME      NOT NULL,
    [UpdatedBy]     VARCHAR (100) NULL,
    [DateUpdated]   DATETIME      NULL,
    CONSTRAINT [PK_EmpDateWiseJobLocation] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_EmpDateWiseJobLocation_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmpDateWiseJobLocation_JobLocation] FOREIGN KEY ([JobLcSystemID]) REFERENCES [dbo].[JobLocation] ([SystemID])
);

