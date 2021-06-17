CREATE TABLE [dbo].[TaxActualInvesment] (
    [SystemID]        VARCHAR (30)    NOT NULL,
    [EmpInfoSystemID] VARCHAR (30)    NOT NULL,
    [TaxYearID]       VARCHAR (30)    NULL,
    [GroupID]         VARCHAR (10)    NULL,
    [PlantID]         VARCHAR (10)    NULL,
    [InvesmentAmount] NUMERIC (18, 4) NULL,
    [AddedBy]         VARCHAR (100)   NOT NULL,
    [DateAdded]       DATETIME        NOT NULL,
    [UpdatedBy]       VARCHAR (100)   NULL,
    [DateUpdated]     DATETIME        NULL,
    CONSTRAINT [PK_TaxActualInvesment] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_TaxActualInvesment_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_TaxActualInvesment_EmployeeInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_TaxActualInvesment_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

