﻿CREATE TABLE [dbo].[SalaryProcessLogDetail] (
    [Id]                 VARCHAR (50)    NOT NULL,
    [CompanyGroupId]     VARCHAR (10)    NULL,
    [PlantId]            VARCHAR (10)    NULL,
    [SalaryProcessId]    VARCHAR (30)    NULL,
    [EmpSystemId]        VARCHAR (30)    NULL,
    [Flag]               VARCHAR (100)   NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [DesignationId]      VARCHAR (10)    NULL,
    [LegalDesignationId] VARCHAR (10)    NULL,
    [PaymentMode]        VARCHAR (30)    NULL,
    [BankAccNo]          VARCHAR (50)    NULL,
    [SalaryPercentage]   DECIMAL (18, 2) NULL,
    [BankSystemID]       VARCHAR (10)    NULL,
    [BankBranchId]       VARCHAR (10)    NULL,
    [EmployeeCategoryId] VARCHAR (10)    NULL,
    [LegalSalaryGradeId] VARCHAR (10)    NULL,
    [BudgetCode]         VARCHAR (10)    NULL,
    [IFSCCode]           VARCHAR (100)   NULL,
    [MICRCode]           VARCHAR (100)   NULL,
    CONSTRAINT [PK_SalaryProcessLogDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalaryProcessLogDetail_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SalaryProcessLogDetail_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_SalaryProcessLogDetail_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalaryProcessLogDetail_SalaryProcMaster] FOREIGN KEY ([SalaryProcessId]) REFERENCES [dbo].[SalaryProcMaster] ([SystemID])
);

