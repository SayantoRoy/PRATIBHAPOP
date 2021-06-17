CREATE TABLE [dbo].[SalaryHeadSetting] (
    [Id]             VARCHAR (20) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [PlantId]        VARCHAR (10) NOT NULL,
    [SalaryRuleId]   VARCHAR (30) NOT NULL,
    [SalaryHeadEnum] VARCHAR (20) NOT NULL,
    [IsEditable]     BIT          NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIp]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIp]  VARCHAR (15) NULL,
    CONSTRAINT [PK__SalaryHe__3214EC0732BCD2A3] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalaryHeadSetting_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SalaryHeadSetting_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalaryHeadSetting_SalaryRule] FOREIGN KEY ([SalaryRuleId]) REFERENCES [dbo].[SalaryRuleMaster] ([SystemID])
);

