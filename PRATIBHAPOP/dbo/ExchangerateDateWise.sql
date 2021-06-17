CREATE TABLE [dbo].[ExchangerateDateWise] (
    [SystemID]              VARCHAR (30)    NOT NULL,
    [FromCurrencyUnit]      NUMERIC (18, 8) NULL,
    [FromCurrencyCode]      VARCHAR (10)    NULL,
    [ToCurrencyBankBuying]  NUMERIC (18, 8) NULL,
    [ToCurrencyBankSelling] NUMERIC (18, 8) NULL,
    [ToCurrencyAverage]     NUMERIC (18, 8) NULL,
    [ToCurrencyCode]        VARCHAR (10)    NULL,
    [FromDate]              DATETIME        NULL,
    [CompanyID]             VARCHAR (30)    NOT NULL,
    [AddedBy]               VARCHAR (100)   CONSTRAINT [DF_ExchangerateDateWise_AddedBy] DEFAULT ('APLOS') NOT NULL,
    [DateAdded]             DATETIME        CONSTRAINT [DF_ExchangerateDateWise_DateAdded] DEFAULT (getdate()) NOT NULL,
    [UpdatedBy]             VARCHAR (100)   NULL,
    [DateUpdated]           DATETIME        NULL,
    CONSTRAINT [PK_ExchangerateDateWise] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90)
);

