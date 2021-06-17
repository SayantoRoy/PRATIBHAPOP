CREATE TABLE [dbo].[ExchangerateDateWiseForHR] (
    [SystemID]          VARCHAR (30)    NOT NULL,
    [FromCurrencyUnit]  NUMERIC (18, 8) NULL,
    [FromCurrencyCode]  VARCHAR (20)    NULL,
    [ToCurrencyBuying]  NUMERIC (18, 8) NULL,
    [ToCurrencySelling] NUMERIC (18, 8) NULL,
    [ToCurrencyCode]    VARCHAR (20)    NULL,
    [FromDate]          DATETIME        NULL,
    [GroupID]           VARCHAR (10)    NULL,
    [PlantID]           VARCHAR (10)    NULL,
    [AddedBy]           VARCHAR (100)   CONSTRAINT [DF_ExchangerateDateWiseForHR_AddedBy] DEFAULT ('EPIC') NOT NULL,
    [DateAdded]         DATETIME        CONSTRAINT [DF_ExchangerateDateWiseForHR_DateAdded] DEFAULT (getdate()) NOT NULL,
    [UpdatedBy]         VARCHAR (100)   NULL,
    [DateUpdated]       DATETIME        NULL,
    CONSTRAINT [PK_ExchangerateDateWiseForHR] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_ExchangerateDateWiseForHR_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ExchangerateDateWiseForHR_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

