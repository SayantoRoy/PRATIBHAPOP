﻿CREATE TABLE [dbo].[TaxDeductionInfoMonthWise] (
    [SystemID]                 VARCHAR (30)    NOT NULL,
    [EmpInfoSystemID]          VARCHAR (30)    NOT NULL,
    [TaxDefineMasterSystemID]  VARCHAR (30)    NULL,
    [TaxPolicyMstID]           VARCHAR (30)    NULL,
    [TaxGroupID]               VARCHAR (30)    NULL,
    [TaxPeriodSystemID]        VARCHAR (30)    NOT NULL,
    [TaxPayablePeriod]         INT             NULL,
    [SystemCalTaxAmount]       NUMERIC (18, 4) NULL,
    [ActualTaxAmount]          NUMERIC (18, 4) NOT NULL,
    [SlrProcMstSystemID]       VARCHAR (30)    NULL,
    [IsPaid]                   BIT             CONSTRAINT [DF_TaxDeductionInfoMonthWise_IsPaid] DEFAULT ((0)) NOT NULL,
    [AddedBy]                  VARCHAR (100)   NOT NULL,
    [DateAdded]                DATETIME        NOT NULL,
    [UpdatedBy]                VARCHAR (100)   NULL,
    [DateUpdated]              DATETIME        NULL,
    [CompanyContributedAmount] DECIMAL (18, 4) DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_TaxDeductionInfoMonthWise] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_TaxDeductionInfoMonthWise_EmployeeInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_TaxDeductionInfoMonthWise_SlrProcMstSystemID] FOREIGN KEY ([SlrProcMstSystemID]) REFERENCES [dbo].[SalaryProcMaster] ([SystemID]),
    CONSTRAINT [FK_TaxDeductionInfoMonthWise_TaxDefineMaster] FOREIGN KEY ([TaxDefineMasterSystemID]) REFERENCES [dbo].[TaxDefineMaster] ([SystemID]),
    CONSTRAINT [FK_TaxDeductionInfoMonthWise_TaxGroup] FOREIGN KEY ([TaxGroupID]) REFERENCES [dbo].[TaxGroup] ([SystemID]),
    CONSTRAINT [FK_TaxDeductionInfoMonthWise_TaxPolicyMaster] FOREIGN KEY ([TaxPolicyMstID]) REFERENCES [dbo].[TaxPolicyMaster] ([SystemID])
);
