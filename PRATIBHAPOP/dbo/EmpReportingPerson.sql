CREATE TABLE [dbo].[EmpReportingPerson] (
    [SystemID]       VARCHAR (30)  NOT NULL,
    [SrNo]           INT           NOT NULL,
    [EmpSystemID]    VARCHAR (30)  NOT NULL,
    [RptEmpSystemID] VARCHAR (30)  NOT NULL,
    [AddedBy]        VARCHAR (100) NOT NULL,
    [DateAdded]      DATETIME      NOT NULL,
    [UpdatedBy]      VARCHAR (100) NULL,
    [DateUpdated]    DATETIME      NULL,
    CONSTRAINT [PK_EmpReportingPerson] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_EmpReportingPerson_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmpReportingPerson_EmployeeInformation1] FOREIGN KEY ([RptEmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

