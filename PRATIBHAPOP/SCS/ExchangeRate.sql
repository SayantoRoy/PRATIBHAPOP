CREATE TABLE [SCS].[ExchangeRate] (
    [Id]                    VARCHAR (10)    NOT NULL,
    [CompanyId]             VARCHAR (10)    NULL,
    [FromCurrencyUnit]      INT             NULL,
    [FromCurrencyCode]      VARCHAR (10)    NULL,
    [ToCurrencyBankBuying]  DECIMAL (18, 4) NULL,
    [ToCurrencyBankSelling] DECIMAL (18, 4) NULL,
    [ToCurrencyAverage]     DECIMAL (18, 4) NULL,
    [ToCurrencyCode]        VARCHAR (10)    NULL,
    [FromDate]              DATETIME        NULL,
    [Active]                BIT             NOT NULL,
    [Archive]               BIT             NOT NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    CONSTRAINT [PK_ExchangeRate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ExchangeRate_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id])
);

