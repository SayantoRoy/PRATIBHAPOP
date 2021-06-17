CREATE TABLE [dbo].[SalaryRuleOT] (
    [SalaryRuleOTSystemID]     VARCHAR (30)  NOT NULL,
    [SalaryRuleMasterSystemID] VARCHAR (30)  NOT NULL,
    [SalaryHeadID]             VARCHAR (30)  NULL,
    [OverTimeDayType]          VARCHAR (30)  NULL,
    [AddedBy]                  VARCHAR (100) NOT NULL,
    [DateAdded]                DATETIME      NOT NULL,
    [UpdatedBy]                VARCHAR (100) NULL,
    [DateUpdated]              DATETIME      NULL,
    [IsIndividual]             BIT           NULL,
    [SequenceNo]               INT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SalaryRuleOT] PRIMARY KEY CLUSTERED ([SalaryRuleOTSystemID] ASC),
    CONSTRAINT [FK_SalaryRuleOT_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_SalaryRuleOT_SalaryRuleMaster] FOREIGN KEY ([SalaryRuleMasterSystemID]) REFERENCES [dbo].[SalaryRuleMaster] ([SystemID])
);

