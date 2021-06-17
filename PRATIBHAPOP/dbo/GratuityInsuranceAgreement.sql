CREATE TABLE [dbo].[GratuityInsuranceAgreement] (
    [Id]                   VARCHAR (30)  NOT NULL,
    [AgreementNo]          VARCHAR (50)  NOT NULL,
    [AgreementDate]        DATETIME      NOT NULL,
    [InsuranceCompanyName] VARCHAR (100) NOT NULL,
    [Branch]               VARCHAR (100) NULL,
    [CompanyId]            VARCHAR (10)  NOT NULL,
    [AddedBy]              VARCHAR (30)  NOT NULL,
    [AddedDate]            DATETIME      NOT NULL,
    [AddedFromIP]          VARCHAR (15)  NOT NULL,
    [UpdatedBy]            VARCHAR (30)  NULL,
    [UpdatedDate]          DATETIME      NULL,
    [UpdatedFromIP]        VARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_GAgrement_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id])
);

