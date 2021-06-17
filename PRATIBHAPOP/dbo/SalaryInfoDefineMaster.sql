CREATE TABLE [dbo].[SalaryInfoDefineMaster] (
    [SystemID]                 VARCHAR (30)  NOT NULL,
    [EmpInfoSystemID]          VARCHAR (30)  NOT NULL,
    [SalaryIncrementSystemID]  VARCHAR (30)  NULL,
    [SalaryRuleMasterSystemID] VARCHAR (30)  NULL,
    [GroupID]                  VARCHAR (10)  NULL,
    [PlantID]                  VARCHAR (10)  NULL,
    [EffectiveDate]            DATETIME      NULL,
    [IsApproved]               BIT           CONSTRAINT [DF_SalaryInfoDefineMaster_IsApproved_1] DEFAULT ((0)) NOT NULL,
    [ApprovedBy]               VARCHAR (100) NULL,
    [DateApproved]             DATETIME      NULL,
    [AddedBy]                  VARCHAR (100) NOT NULL,
    [DateAdded]                DATETIME      NOT NULL,
    [UpdatedBy]                VARCHAR (100) NULL,
    [DateUpdated]              DATETIME      NULL,
    CONSTRAINT [PK_SalaryInfoDefineMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_SalaryInfoDefineMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SalaryInfoDefineMaster_EmpInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_SalaryInfoDefineMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalaryInfoDefineMaster_SalaryRuleMaster] FOREIGN KEY ([SalaryRuleMasterSystemID]) REFERENCES [dbo].[SalaryRuleMaster] ([SystemID])
);

