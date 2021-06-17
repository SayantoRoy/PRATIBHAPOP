﻿CREATE TABLE [dbo].[SalaryProcChild] (
    [SystemID]             VARCHAR (30)    NOT NULL,
    [SlrProcMstSystemID]   VARCHAR (30)    NOT NULL,
    [EmpInfoSystemID]      VARCHAR (30)    NULL,
    [SalaryID]             VARCHAR (30)    NULL,
    [GroupID]              VARCHAR (10)    NOT NULL,
    [PlantID]              VARCHAR (10)    NOT NULL,
    [PayAbleShSystemID]    VARCHAR (30)    NULL,
    [SalaryHeadID]         VARCHAR (30)    NULL,
    [EntryCurrencyID]      VARCHAR (10)    NULL,
    [EntryAmount]          NUMERIC (18, 4) NULL,
    [DefineCurrencyID]     VARCHAR (10)    NULL,
    [DefineAmount]         NUMERIC (18, 4) NULL,
    [DisbusmentCurrencyID] VARCHAR (10)    NULL,
    [DisbusmentAmount]     NUMERIC (18, 4) NULL,
    [AcltExcDisbSlrHDID]   VARCHAR (30)    NULL,
    [AcltExcDisbSlrHDAmt]  NUMERIC (18, 4) NULL,
    [IsNetPayEffect]       BIT             CONSTRAINT [DF_SalaryProcChild_IsNetPayEffect] DEFAULT ((1)) NOT NULL,
    [IsApproved]           BIT             CONSTRAINT [DF_SalaryProcChild_IsApproved] DEFAULT ((0)) NOT NULL,
    [IsDisbursed]          BIT             CONSTRAINT [DF_SalaryProcChild_IsDisbursed] DEFAULT ((0)) NOT NULL,
    [AddedBy]              VARCHAR (100)   NOT NULL,
    [DateAdded]            DATETIME        NOT NULL,
    [UpdatedBy]            VARCHAR (100)   NULL,
    [DateUpdated]          DATETIME        NULL,
    CONSTRAINT [PK_SalaryProcChild] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_SalaryProcChild_Currency] FOREIGN KEY ([EntryCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_SalaryProcChild_Currency1] FOREIGN KEY ([DefineCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_SalaryProcChild_Currency2] FOREIGN KEY ([DisbusmentCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_SalaryProcChild_EmpInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_SalaryProcChild_GroupCreation] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SalaryProcChild_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalaryProcChild_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_SalaryProcChild_SalaryProcMaster] FOREIGN KEY ([SlrProcMstSystemID]) REFERENCES [dbo].[SalaryProcMaster] ([SystemID])
);

