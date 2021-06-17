CREATE TABLE [MST].[EmpWiseDirectTaxPaymentHead] (
    [SystemID]               VARCHAR (30)    NOT NULL,
    [EmpInfoSystemID]        VARCHAR (30)    NOT NULL,
    [TaxYearID]              VARCHAR (10)    NULL,
    [Amount]                 NUMERIC (18, 4) NULL,
    [DirectTaxPaymentHeadId] VARCHAR (10)    CONSTRAINT [DF_Table_1_OpeningIncome] DEFAULT ((0)) NULL,
    [GroupID]                VARCHAR (10)    NULL,
    [PlantID]                VARCHAR (10)    NULL,
    [AddedBy]                VARCHAR (100)   NOT NULL,
    [DateAdded]              DATETIME        NOT NULL,
    [UpdatedBy]              VARCHAR (100)   NULL,
    [DateUpdated]            DATETIME        NULL,
    CONSTRAINT [PK_EmpWiseDirectTaxPaymentHead] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_EmpWiseDirectTaxPaymentHead_DirectTaxPaymentHead] FOREIGN KEY ([DirectTaxPaymentHeadId]) REFERENCES [HKP].[DirectTaxPaymentHead] ([Id]),
    CONSTRAINT [FK_EmpWiseDirectTaxPaymentHead_EmployeeInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmpWiseDirectTaxPaymentHead_TaxYear] FOREIGN KEY ([TaxYearID]) REFERENCES [SCS].[TaxYear] ([Id])
);

