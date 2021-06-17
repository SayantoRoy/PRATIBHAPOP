CREATE TABLE [dbo].[SalaryRuleAttdnBonusPmtMaster] (
    [SalaryRuleAttdnBonusPmtSystemID] VARCHAR (30)  NOT NULL,
    [SalaryRuleMasterSystemID]        VARCHAR (30)  NOT NULL,
    [SalaryHeadID]                    VARCHAR (30)  NULL,
    [AddedBy]                         VARCHAR (100) NOT NULL,
    [DateAdded]                       DATETIME      NOT NULL,
    [UpdatedBy]                       VARCHAR (100) NULL,
    [DateUpdated]                     DATETIME      NULL,
    [IsIndividual]                    BIT           CONSTRAINT [DF_SalaryRuleAttdnBonusPmtMaster_IsIndividual] DEFAULT ((1)) NULL,
    [SequenceNo]                      INT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SalaryRuleAttendanceBonusMaster] PRIMARY KEY CLUSTERED ([SalaryRuleAttdnBonusPmtSystemID] ASC),
    CONSTRAINT [FK_SalaryRuleAttdnBonusPmtMaster_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_SalaryRuleAttdnBonusPmtMaster_SalaryRuleMaster] FOREIGN KEY ([SalaryRuleMasterSystemID]) REFERENCES [dbo].[SalaryRuleMaster] ([SystemID])
);

