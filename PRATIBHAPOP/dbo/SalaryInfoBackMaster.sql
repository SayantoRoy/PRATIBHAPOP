CREATE TABLE [dbo].[SalaryInfoBackMaster] (
    [SystemID]                 VARCHAR (30)  NOT NULL,
    [EmpInfoSystemID]          VARCHAR (30)  NOT NULL,
    [SalaryIncrementSystemID]  VARCHAR (30)  NULL,
    [SalaryRuleMasterSystemID] VARCHAR (30)  NULL,
    [GroupID]                  VARCHAR (10)  NULL,
    [PlantID]                  VARCHAR (10)  NULL,
    [EffectiveDate]            DATETIME      NULL,
    [AddedBy]                  VARCHAR (100) NOT NULL,
    [DateAdded]                DATETIME      NOT NULL,
    [UpdatedBy]                VARCHAR (100) NULL,
    [DateUpdated]              DATETIME      NULL,
    [IsApproved]               BIT           CONSTRAINT [DF_SalaryInfoBackMaster_IsApproved] DEFAULT ((0)) NOT NULL,
    [ApprovedBy]               VARCHAR (100) NULL,
    [DateApproved]             DATETIME      NULL,
    [BackTableAddedBy]         VARCHAR (100) NOT NULL,
    [DateBackTableAdded]       DATETIME      NOT NULL,
    CONSTRAINT [PK_SalaryInfoBackMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_SalaryInfoBackMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SalaryInfoBackMaster_EmpInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_SalaryInfoBackMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalaryInfoBackMaster_SalaryRuleMaster] FOREIGN KEY ([SalaryRuleMasterSystemID]) REFERENCES [dbo].[SalaryRuleMaster] ([SystemID])
);

