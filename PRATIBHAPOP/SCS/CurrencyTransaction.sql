CREATE TABLE [SCS].[CurrencyTransaction] (
    [Id]            VARCHAR (10)  NOT NULL,
    [CompanyId]     VARCHAR (10)  NOT NULL,
    [CurrencyId]    VARCHAR (10)  NOT NULL,
    [Active]        BIT           CONSTRAINT [DF_TransactionCurrency_Active] DEFAULT ((1)) NOT NULL,
    [Archive]       BIT           CONSTRAINT [DF_TransactionCurrency_ARCHIVE] DEFAULT ((0)) NOT NULL,
    [AddedBy]       VARCHAR (30)  CONSTRAINT [DF_TransactionCurrency_ADDEDBY] DEFAULT (N'System') NOT NULL,
    [AddedDate]     DATETIME      CONSTRAINT [DF_TransactionCurrency_ADDEDDATE] DEFAULT (getdate()) NOT NULL,
    [AddedFromIP]   VARCHAR (50)  CONSTRAINT [DF_TransactionCurrency_ADDEDFROMIP] DEFAULT (N'Server') NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] NVARCHAR (15) NULL,
    CONSTRAINT [PK_CurrencyTransaction] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CurrencyTransaction_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CurrencyTransaction_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id])
);

