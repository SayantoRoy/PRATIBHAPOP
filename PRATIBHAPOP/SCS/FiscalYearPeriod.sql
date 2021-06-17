CREATE TABLE [SCS].[FiscalYearPeriod] (
    [Id]            VARCHAR (10)  NOT NULL,
    [FiscalYearId]  VARCHAR (10)  NOT NULL,
    [PeriodNo]      INT           NOT NULL,
    [PeriodName]    VARCHAR (50)  NOT NULL,
    [StartDate]     DATE          NOT NULL,
    [EndDate]       DATE          NOT NULL,
    [Description]   VARCHAR (250) NULL,
    [Active]        BIT           NOT NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (50)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (50)  NULL,
    CONSTRAINT [PK_FiscalYearPeriod] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FiscalYearPeriod_FiscalYear] FOREIGN KEY ([FiscalYearId]) REFERENCES [SCS].[FiscalYear] ([Id])
);

