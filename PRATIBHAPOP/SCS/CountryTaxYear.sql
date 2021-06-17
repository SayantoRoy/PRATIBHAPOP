CREATE TABLE [SCS].[CountryTaxYear] (
    [Id]            VARCHAR (10) NOT NULL,
    [TaxYearId]     VARCHAR (10) NOT NULL,
    [CountryId]     VARCHAR (10) NOT NULL,
    [Active]        BIT          NOT NULL,
    [Archive]       BIT          NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_CountryTaxYear] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CountryTaxYear_Country] FOREIGN KEY ([CountryId]) REFERENCES [SCS].[Country] ([Id]),
    CONSTRAINT [FK_CountryTaxYear_TaxYear] FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id])
);

