CREATE TABLE [dbo].[SalaryRuleGovtGrd] (
    [SalaryRuleGovtGrdSystemID] VARCHAR (30)  NOT NULL,
    [SalaryRuleMasterSystemID]  VARCHAR (30)  NOT NULL,
    [SalaryHeadID]              VARCHAR (30)  NULL,
    [GovtSalaryHeadID]          VARCHAR (500) NULL,
    [AddedBy]                   VARCHAR (100) NOT NULL,
    [DateAdded]                 DATETIME      NOT NULL,
    [UpdatedBy]                 VARCHAR (100) NULL,
    [DateUpdated]               DATETIME      NULL,
    [SequenceNo]                INT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SalaryRuleGovtGrd] PRIMARY KEY CLUSTERED ([SalaryRuleGovtGrdSystemID] ASC),
    CONSTRAINT [FK_SalaryRuleGovtGrd_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_SalaryRuleGovtGrd_SalaryRuleMaster] FOREIGN KEY ([SalaryRuleMasterSystemID]) REFERENCES [dbo].[SalaryRuleMaster] ([SystemID])
);

