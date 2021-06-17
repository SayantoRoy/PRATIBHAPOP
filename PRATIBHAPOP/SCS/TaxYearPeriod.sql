CREATE TABLE [SCS].[TaxYearPeriod] (
    [Id]            VARCHAR (10)  NOT NULL,
    [TaxYearId]     VARCHAR (10)  NOT NULL,
    [PeriodNo]      INT           NOT NULL,
    [PeriodName]    VARCHAR (50)  NOT NULL,
    [StartDate]     DATE          NOT NULL,
    [EndDate]       DATE          NOT NULL,
    [Description]   VARCHAR (250) NULL,
    [Active]        BIT           NOT NULL,
    [Archive]       BIT           NOT NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (50)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (50)  NULL,
    CONSTRAINT [PK_TaxYearPeriod] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaxYearPeriod_TaxYear] FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id])
);

