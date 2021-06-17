CREATE TABLE [dbo].[CurrencyRuleChild] (
    [SystemID]                       VARCHAR (30)  NOT NULL,
    [MstSystemID]                    VARCHAR (30)  NOT NULL,
    [SalaryHeadID]                   VARCHAR (30)  NULL,
    [AmtEntryCurrency]               VARCHAR (10)  NULL,
    [AmtDefinitionCurrency]          VARCHAR (10)  NULL,
    [AmtDisbusmentCurrency]          VARCHAR (10)  NULL,
    [AccumulateExchangeRate]         BIT           NULL,
    [AccumulateExchangeSalaryHeadID] VARCHAR (30)  NULL,
    [IntegerInDisb]                  BIT           NULL,
    [AddedBy]                        VARCHAR (100) NOT NULL,
    [DateAdded]                      DATETIME      NOT NULL,
    [UpdatedBy]                      VARCHAR (100) NULL,
    [DateUpdated]                    DATETIME      NULL,
    [RoundOption]                    VARCHAR (50)  NULL,
    [IsDecimalInDisb]                BIT           NOT NULL,
    [DecimalNo]                      INT           NULL,
    CONSTRAINT [PK_CurrencyRuleChild] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_CurrencyRuleChild_Currency] FOREIGN KEY ([AmtEntryCurrency]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_CurrencyRuleChild_Currency1] FOREIGN KEY ([AmtDisbusmentCurrency]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_CurrencyRuleChild_Currency2] FOREIGN KEY ([AmtDefinitionCurrency]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_CurrencyRuleChild_CurrencyRuleMaster] FOREIGN KEY ([MstSystemID]) REFERENCES [dbo].[CurrencyRuleMaster] ([SystemID]),
    CONSTRAINT [FK_CurrencyRuleChild_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Automatic tailer machine', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CurrencyRuleChild', @level2type = N'COLUMN', @level2name = N'AmtDefinitionCurrency';

