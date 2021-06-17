CREATE TABLE [dbo].[SalaryRuleMaster] (
    [SystemID]              VARCHAR (30)  NOT NULL,
    [SalaryRuleName]        VARCHAR (100) NULL,
    [SalaryRuleDescription] VARCHAR (150) NULL,
    [CurrencyRuleSystemID]  VARCHAR (30)  NULL,
    [GroupID]               VARCHAR (10)  NULL,
    [PlantID]               VARCHAR (10)  NULL,
    [IsUsed]                BIT           CONSTRAINT [DF_SalaryRuleMaster_NoOfUsed] DEFAULT ((0)) NOT NULL,
    [TotalSalaryId]         VARCHAR (30)  NULL,
    [AddedBy]               VARCHAR (100) NOT NULL,
    [DateAdded]             DATETIME      NOT NULL,
    [UpdatedBy]             VARCHAR (100) NULL,
    [DateUpdated]           DATETIME      NULL,
    [TaxGroupID]            VARCHAR (30)  NULL,
    [IsValidGovGrd]         BIT           CONSTRAINT [DF_SalaryRuleMaster_IsValidGovGrd] DEFAULT ((0)) NOT NULL,
    [IsActive]              BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_SalaryRuleMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_SalaryRuleMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SalaryRuleMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalaryRuleMaster_SalaryHead] FOREIGN KEY ([TotalSalaryId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_SalaryRuleMaster_TaxGroup] FOREIGN KEY ([TaxGroupID]) REFERENCES [dbo].[TaxGroup] ([SystemID])
);

