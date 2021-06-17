CREATE TABLE [dbo].[CarryForwardSalary] (
    [SystemID]             VARCHAR (30)    NOT NULL,
    [CurrencyRuleSystemID] VARCHAR (30)    NULL,
    [SlrProcMstSystemID]   VARCHAR (30)    NOT NULL,
    [EmpInfoSystemID]      VARCHAR (30)    NULL,
    [SalaryID]             VARCHAR (30)    NULL,
    [GroupID]              VARCHAR (10)    NOT NULL,
    [PlantID]              VARCHAR (10)    NOT NULL,
    [DisbusmentCurrencyID] VARCHAR (10)    NULL,
    [DisbusmentAmount]     NUMERIC (18, 4) NULL,
    [IsApproved]           BIT             CONSTRAINT [DF_CarryForwardSalary_IsApproved] DEFAULT ((0)) NOT NULL,
    [IsDisbursed]          BIT             CONSTRAINT [DF_CarryForwardSalary_IsDisbursed] DEFAULT ((0)) NOT NULL,
    [AddedBy]              VARCHAR (100)   NOT NULL,
    [DateAdded]            DATETIME        NOT NULL,
    [UpdatedBy]            VARCHAR (100)   NULL,
    [DateUpdated]          DATETIME        NULL,
    CONSTRAINT [PK_CarryForwardSalary] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_CarryForwardSalary_Currency] FOREIGN KEY ([DisbusmentCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_CarryForwardSalary_EmpInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_CarryForwardSalary_GroupCreation] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CarryForwardSalary_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_CarryForwardSalary_SalaryProcMaster] FOREIGN KEY ([SlrProcMstSystemID]) REFERENCES [dbo].[SalaryProcMaster] ([SystemID])
);

