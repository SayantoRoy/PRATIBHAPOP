CREATE TABLE [dbo].[SalaryProcessScheduleDetail] (
    [SystemID]                 VARCHAR (100) NOT NULL,
    [HeadSystemId]             VARCHAR (30)  NULL,
    [IsDisbursed]              BIT           NULL,
    [IsApproved]               VARCHAR (30)  NULL,
    [EmpSystemID]              VARCHAR (30)  NULL,
    [EmployeeCode]             VARCHAR (30)  NULL,
    [EmployeeName]             VARCHAR (100) NULL,
    [PlantName]                VARCHAR (100) NULL,
    [DOJ]                      VARCHAR (50)  NULL,
    [DOS]                      VARCHAR (50)  NULL,
    [EmployeeStatus]           VARCHAR (20)  NULL,
    [DesignationGroup]         VARCHAR (100) NULL,
    [SalaryRuleMasterSystemID] VARCHAR (30)  NULL,
    [SalaryRuleName]           VARCHAR (100) NULL,
    [PlantID]                  VARCHAR (10)  NULL,
    [ToDate]                   DATETIME      NULL,
    [ProcessStatus]            VARCHAR (20)  NULL,
    [BankAccountStatus]        VARCHAR (30)  NULL,
    [IsSelectSlrProc]          BIT           CONSTRAINT [DF_SalaryProcessScheduleDetail_IsSelectSlrProc] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_SalaryProcessScheduleDetail] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_SalaryProcessScheduleDetail_SalaryProcessScheduleHead] FOREIGN KEY ([HeadSystemId]) REFERENCES [dbo].[SalaryProcessScheduleHead] ([SystemId])
);

