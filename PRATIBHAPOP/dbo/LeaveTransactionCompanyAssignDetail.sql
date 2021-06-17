CREATE TABLE [dbo].[LeaveTransactionCompanyAssignDetail] (
    [SystemID]            VARCHAR (30)  NOT NULL,
    [GroupID]             VARCHAR (10)  NULL,
    [PlantID]             VARCHAR (10)  NULL,
    [ComAssignLvSystemID] VARCHAR (30)  NULL,
    [OffDayDate]          DATETIME      NULL,
    [IsIncentiveLock]     VARCHAR (3)   NULL,
    [DayName]             VARCHAR (12)  NULL,
    [AddedBy]             VARCHAR (100) NOT NULL,
    [DateAdded]           DATETIME      NOT NULL,
    [UpdatedBy]           VARCHAR (100) NOT NULL,
    [DateUpdated]         DATETIME      NOT NULL,
    CONSTRAINT [PK_LeaveTransactionCompanyAssignDetail] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_LeaveTransactionCompanyAssignDetail_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_LeaveTransactionCompanyAssignDetail_LeaveTransactionCompanyAssign] FOREIGN KEY ([ComAssignLvSystemID]) REFERENCES [dbo].[LeaveTransactionCompanyAssign] ([SystemID]),
    CONSTRAINT [FK_LeaveTransactionCompanyAssignDetail_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

