CREATE TABLE [dbo].[SalaryRuleESIC] (
    [SalaryRuleESICSystemID]   VARCHAR (30)  NOT NULL,
    [SalaryRuleMasterSystemID] VARCHAR (30)  NOT NULL,
    [SalaryHeadID]             VARCHAR (30)  NULL,
    [AddedBy]                  VARCHAR (100) NOT NULL,
    [DateAdded]                DATETIME      NOT NULL,
    [UpdatedBy]                VARCHAR (100) NULL,
    [DateUpdated]              DATETIME      NULL,
    [IsIndividual]             BIT           NULL,
    [SequenceNo]               INT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SalaryRuleESIC] PRIMARY KEY CLUSTERED ([SalaryRuleESICSystemID] ASC),
    CONSTRAINT [FK_SalaryRuleESIC_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_SalaryRuleESIC_SalaryRuleMaster] FOREIGN KEY ([SalaryRuleMasterSystemID]) REFERENCES [dbo].[SalaryRuleMaster] ([SystemID])
);

