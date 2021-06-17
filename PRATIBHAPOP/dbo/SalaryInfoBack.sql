CREATE TABLE [dbo].[SalaryInfoBack] (
    [SystemID]                VARCHAR (30)    NOT NULL,
    [SalaryID]                VARCHAR (30)    NULL,
    [SalaryHeadID]            VARCHAR (30)    NOT NULL,
    [EntryCurrencyID]         VARCHAR (10)    NULL,
    [EntryAmount]             NUMERIC (18, 4) NOT NULL,
    [DefineCurrencyID]        VARCHAR (10)    NULL,
    [DefineAmount]            NUMERIC (18, 4) NULL,
    [AmtDefinitionCurrencyID] VARCHAR (10)    NULL,
    [AmtDefinitionRate]       NUMERIC (18, 4) NULL,
    [AddedBy]                 VARCHAR (100)   NOT NULL,
    [DateAdded]               DATETIME        NOT NULL,
    [UpdatedBy]               VARCHAR (100)   NULL,
    [DateUpdated]             DATETIME        NULL,
    [SequenceNo]              INT             NULL,
    [SalaryCategory]          VARCHAR (100)   NULL,
    CONSTRAINT [PK_SalaryInfoBack] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_SalaryInfoBack_Currency] FOREIGN KEY ([EntryCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_SalaryInfoBack_Currency1] FOREIGN KEY ([DefineCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_SalaryInfoBack_Currency2] FOREIGN KEY ([AmtDefinitionCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_SalaryInfoBack_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_SalaryInfoBack_SalaryInfoBackMaster] FOREIGN KEY ([SalaryID]) REFERENCES [dbo].[SalaryInfoBackMaster] ([SystemID])
);

