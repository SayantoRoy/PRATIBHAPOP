CREATE TABLE [SCS].[CompanyGroupCurrency] (
    [Id]               VARCHAR (10) NOT NULL,
    [CompanyGroupId]   VARCHAR (10) NOT NULL,
    [CurrencyId]       VARCHAR (10) NOT NULL,
    [IsNeglateDecimal] BIT          NOT NULL,
    [Active]           BIT          NOT NULL,
    [Archive]          BIT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupCurrency] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupCurrency_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupCurrency_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id])
);

