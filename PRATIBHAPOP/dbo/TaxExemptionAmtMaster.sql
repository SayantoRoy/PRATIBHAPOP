CREATE TABLE [dbo].[TaxExemptionAmtMaster] (
    [SystemID]        VARCHAR (30)  NOT NULL,
    [EmpInfoSystemID] VARCHAR (30)  NOT NULL,
    [TxGrpTagEmpID]   VARCHAR (30)  NULL,
    [TaxYearID]       VARCHAR (30)  NULL,
    [GroupID]         VARCHAR (10)  NULL,
    [PlantID]         VARCHAR (10)  NULL,
    [AddedBy]         VARCHAR (100) NOT NULL,
    [DateAdded]       DATETIME      NOT NULL,
    [UpdatedBy]       VARCHAR (100) NULL,
    [DateUpdated]     DATETIME      NULL,
    CONSTRAINT [PK_TaxExemptionAmtMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_TaxExemptionAmtMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_TaxExemptionAmtMaster_EmployeeInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_TaxExemptionAmtMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_TaxExemptionAmtMaster_TaxGroupTagWithEmployee] FOREIGN KEY ([TxGrpTagEmpID]) REFERENCES [dbo].[TaxGroupTagWithEmployee] ([SystemID])
);

