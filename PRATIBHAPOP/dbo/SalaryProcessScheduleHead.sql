CREATE TABLE [dbo].[SalaryProcessScheduleHead] (
    [SystemId]           VARCHAR (30)  NOT NULL,
    [FromDate]           DATETIME      NULL,
    [ToDate]             DATETIME      NULL,
    [GroupId]            VARCHAR (30)  NULL,
    [USER]               VARCHAR (30)  NULL,
    [ForeignCurRate]     VARCHAR (30)  NULL,
    [Description]        VARCHAR (250) NULL,
    [UserFrgCurId]       VARCHAR (30)  NULL,
    [PlantId]            VARCHAR (30)  NULL,
    [TaxYearId]          VARCHAR (30)  NULL,
    [TaxPeriod]          VARCHAR (30)  NULL,
    [SalaryProcSystemId] VARCHAR (30)  NULL,
    [SalaryProcId]       VARCHAR (30)  NULL,
    [LocalCurrencyId]    VARCHAR (30)  NULL,
    [LocalCurRate]       VARCHAR (30)  NULL,
    [ForeignCurrencyId]  VARCHAR (30)  NULL,
    [EmpCount]           VARCHAR (150) NULL,
    CONSTRAINT [PK_SalaryProcessScheduleHead] PRIMARY KEY CLUSTERED ([SystemId] ASC)
);

