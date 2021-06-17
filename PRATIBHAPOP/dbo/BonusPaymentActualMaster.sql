﻿CREATE TABLE [dbo].[BonusPaymentActualMaster] (
    [SystemID]                VARCHAR (30)    NOT NULL,
    [SalaryHeadID]            VARCHAR (30)    NULL,
    [BonusSystemID]           VARCHAR (30)    NULL,
    [CurrencyRuleSystemID]    VARCHAR (30)    NULL,
    [EntryCurrencyID]         VARCHAR (10)    NULL,
    [DefineCurrencyID]        VARCHAR (10)    NULL,
    [DisbustCurrencyID]       VARCHAR (10)    NULL,
    [AmtDefinationCurrencyID] VARCHAR (10)    NULL,
    [AmtDefinationRate]       NUMERIC (18, 4) NULL,
    [DisbustSalaryHeadID]     VARCHAR (30)    NULL,
    [EffectiveDate]           DATETIME        NOT NULL,
    [Remarks]                 VARCHAR (200)   NULL,
    [BonusType]               VARCHAR (50)    NULL,
    [PlantID]                 VARCHAR (10)    NULL,
    [AddedBy]                 VARCHAR (100)   NOT NULL,
    [DateAdded]               DATETIME        NOT NULL,
    [UpdatedBy]               VARCHAR (100)   NULL,
    [DateUpdated]             DATETIME        NULL,
    CONSTRAINT [PK_BonusPaymentActualMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_BonusPaymentActualMaster_BonusPolicyMaster] FOREIGN KEY ([BonusSystemID]) REFERENCES [dbo].[BonusPolicyMaster] ([SystemID]),
    CONSTRAINT [FK_BonusPaymentActualMaster_Currency] FOREIGN KEY ([DefineCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_BonusPaymentActualMaster_Currency1] FOREIGN KEY ([DisbustCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_BonusPaymentActualMaster_Currency2] FOREIGN KEY ([EntryCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_BonusPaymentActualMaster_Currency3] FOREIGN KEY ([AmtDefinationCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_BonusPaymentActualMaster_CurrencyRuleMaster] FOREIGN KEY ([CurrencyRuleSystemID]) REFERENCES [dbo].[CurrencyRuleMaster] ([SystemID]),
    CONSTRAINT [FK_BonusPaymentActualMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_BonusPaymentActualMaster_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_BonusPaymentActualMaster_SalaryHead1] FOREIGN KEY ([DisbustSalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

