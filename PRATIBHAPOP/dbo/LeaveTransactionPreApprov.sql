CREATE TABLE [dbo].[LeaveTransactionPreApprov] (
    [SystemID]    VARCHAR (30)  NOT NULL,
    [EmpSystemID] VARCHAR (30)  NOT NULL,
    [GroupID]     VARCHAR (10)  NULL,
    [PlantID]     VARCHAR (10)  NULL,
    [FromDate]    DATETIME      NULL,
    [ToDate]      DATETIME      NULL,
    [LeaveDays]   INT           NULL,
    [LvReason]    VARCHAR (200) NULL,
    [IsPostAppLv] VARCHAR (3)   CONSTRAINT [DF_LeaveTransactionPreApprov_IsPostAppLv] DEFAULT ('NO') NOT NULL,
    [AddedBy]     VARCHAR (100) NOT NULL,
    [DateAdded]   DATETIME      NOT NULL,
    [UpdatedBy]   VARCHAR (100) NULL,
    [DateUpdated] DATETIME      NULL,
    CONSTRAINT [PK_LeaveTransactionPreApprov] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_LeaveTransactionPreApprov_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_LeaveTransactionPreApprov_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_LeaveTransactionPreApprov_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

