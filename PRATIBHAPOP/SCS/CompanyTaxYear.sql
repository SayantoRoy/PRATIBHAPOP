CREATE TABLE [SCS].[CompanyTaxYear] (
    [Id]            VARCHAR (10) NOT NULL,
    [TaxYearId]     VARCHAR (10) NOT NULL,
    [CompanyId]     VARCHAR (10) NOT NULL,
    [Active]        BIT          NOT NULL,
    [Archive]       BIT          NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyTexYear] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyTaxYear_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CompanyTaxYear_TaxYear] FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id])
);

