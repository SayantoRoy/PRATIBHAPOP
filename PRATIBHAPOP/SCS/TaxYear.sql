CREATE TABLE [SCS].[TaxYear] (
    [Id]                   VARCHAR (10) NOT NULL,
    [CompanyGroupId]       VARCHAR (10) NULL,
    [TaxYearCode]          VARCHAR (10) NOT NULL,
    [TaxYearName]          VARCHAR (50) NOT NULL,
    [StartDate]            DATE         NOT NULL,
    [EndDate]              DATE         NOT NULL,
    [IsSysGeneratedPeriod] BIT          NOT NULL,
    [IsPeriodCalendarWise] BIT          NOT NULL,
    [Active]               BIT          NOT NULL,
    [Archive]              BIT          NOT NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    CONSTRAINT [PK_TaxYear] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaxYear_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

