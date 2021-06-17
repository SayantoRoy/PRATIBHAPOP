CREATE TABLE [dbo].[SalaryInfoDefine] (
    [SystemID]                VARCHAR (30)    NOT NULL,
    [SalaryID]                VARCHAR (30)    NULL,
    [SalaryHeadID]            VARCHAR (30)    NULL,
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
    CONSTRAINT [PK_SalaryInfoDefine] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_SalaryInfoDefine_Currency] FOREIGN KEY ([EntryCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_SalaryInfoDefine_Currency1] FOREIGN KEY ([DefineCurrencyID]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_SalaryInfoDefine_Currency2] FOREIGN KEY ([AmtDefinitionCurrencyID]) REFERENCES [SCS].[Currency] ([Id])
);

