CREATE TABLE [dbo].[EmployeeIdCardIssue] (
    [Id]                 VARCHAR (10)    NOT NULL,
    [Sequence]           DECIMAL (18, 2) NULL,
    [EmpSystemId]        VARCHAR (30)    NOT NULL,
    [EmployeeWorkTypeId] VARCHAR (10)    NULL,
    [IssueDate]          DATETIME        NULL,
    [ExpiryDate]         DATETIME        NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    CONSTRAINT [PK_EmployeeIdCardIssue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeIdCardIssue_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

