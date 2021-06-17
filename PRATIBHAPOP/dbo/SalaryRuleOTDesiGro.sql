CREATE TABLE [dbo].[SalaryRuleOTDesiGro] (
    [SalaryRuleMasterSystemID] VARCHAR (30) NOT NULL,
    [DesignationGroupID]       VARCHAR (10) NOT NULL,
    [IsOTNetPayEffect]         BIT          NULL,
    CONSTRAINT [PK_SalaryRuleOTDesiGro] PRIMARY KEY CLUSTERED ([SalaryRuleMasterSystemID] ASC, [DesignationGroupID] ASC),
    CONSTRAINT [FK_SalaryRuleOTDesiGro_DesignationGroup] FOREIGN KEY ([DesignationGroupID]) REFERENCES [HKP].[DesignationGroup] ([Id]),
    CONSTRAINT [FK_SalaryRuleOTDesiGro_SalaryRuleMaster] FOREIGN KEY ([SalaryRuleMasterSystemID]) REFERENCES [dbo].[SalaryRuleMaster] ([SystemID])
);

