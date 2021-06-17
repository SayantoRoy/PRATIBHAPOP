CREATE TABLE [dbo].[TaxOpeningBalance] (
    [SystemID]        VARCHAR (30)    NOT NULL,
    [GroupID]         VARCHAR (10)    NULL,
    [PlantID]         VARCHAR (10)    NULL,
    [EmpInfoSystemID] VARCHAR (30)    NOT NULL,
    [TaxYearID]       VARCHAR (10)    NULL,
    [OpeningBalance]  NUMERIC (18, 4) NULL,
    [OpeningIncome]   NUMERIC (18, 4) CONSTRAINT [DF_TaxOpeningBalance_OpeningIncome] DEFAULT ((0)) NULL,
    [AddedBy]         VARCHAR (100)   NOT NULL,
    [DateAdded]       DATETIME        NOT NULL,
    [UpdatedBy]       VARCHAR (100)   NULL,
    [DateUpdated]     DATETIME        NULL,
    CONSTRAINT [PK_TaxOpeningBalance] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_TaxOpeningBalance_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_TaxOpeningBalance_EmployeeInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_TaxOpeningBalance_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_TaxOpeningBalance_TaxOpeningBalance] FOREIGN KEY ([TaxYearID]) REFERENCES [SCS].[TaxYear] ([Id])
);

