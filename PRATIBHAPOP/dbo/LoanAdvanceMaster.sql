﻿CREATE TABLE [dbo].[LoanAdvanceMaster] (
    [SystemID]                 VARCHAR (30)    NOT NULL,
    [EmpInfoSystemID]          VARCHAR (30)    NOT NULL,
    [SalaryHeadID]             VARCHAR (30)    NULL,
    [CurrencyRuleSystemID]     VARCHAR (30)    NULL,
    [FromMonthNo]              VARCHAR (30)    NULL,
    [FromYearNo]               VARCHAR (30)    NULL,
    [EntryCurrencyID]          VARCHAR (10)    NULL,
    [AdvanceAmount]            NUMERIC (18, 2) NULL,
    [DefineCurrencyID]         VARCHAR (10)    NULL,
    [DefineAmount]             NUMERIC (18, 2) NULL,
    [DisbustCurrencyID]        VARCHAR (10)    NULL,
    [PaidAmount]               NUMERIC (18, 2) NULL,
    [AmtDefinitionCurrencyID]  VARCHAR (10)    NULL,
    [AmtDefinitionRate]        NUMERIC (18, 4) NULL,
    [IsFixedAmount]            BIT             NULL,
    [IsEqualMonthAmount]       BIT             NULL,
    [IsInterestApplicable]     BIT             NULL,
    [InterestPercentageAmount] NUMERIC (18, 2) NULL,
    [InstallmentAmount]        NUMERIC (18, 2) NULL,
    [InstallmentMonth]         INT             NULL,
    [IsDisbusted]              BIT             NULL,
    [AddedBy]                  VARCHAR (100)   NOT NULL,
    [DateAdded]                DATETIME        NOT NULL,
    [UpdatedBy]                VARCHAR (100)   NULL,
    [DateUpdated]              DATETIME        NULL,
    [IsApproved]               BIT             DEFAULT ((0)) NOT NULL,
    [ApprovedBy]               VARCHAR (50)    NULL,
    [ApprovedDate]             DATETIME        NULL,
    [ApprovalStatus]           VARCHAR (20)    NULL,
    [PlantId]                  VARCHAR (10)    NOT NULL,
    [IsOpeningBalance]         NUMERIC (18, 2) DEFAULT ((0)) NOT NULL,
    [StartDate]                DATETIME        NULL,
    CONSTRAINT [PK_LoanAdvanceMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_LoanAdvanceMaster_Currency] FOREIGN KEY ([EntryCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_LoanAdvanceMaster_Currency1] FOREIGN KEY ([DefineCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_LoanAdvanceMaster_Currency2] FOREIGN KEY ([DisbustCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_LoanAdvanceMaster_Currency3] FOREIGN KEY ([AmtDefinitionCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_LoanAdvanceMaster_CurrencyRuleMaster] FOREIGN KEY ([CurrencyRuleSystemID]) REFERENCES [dbo].[CurrencyRuleMaster] ([SystemID]),
    CONSTRAINT [FK_LoanAdvanceMaster_EmpInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_LoanAdvanceMaster_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);
