CREATE TABLE [HKP].[GLCompanyInfo] (
    [Id]                     VARCHAR (10)    NOT NULL,
    [CompanyId]              VARCHAR (10)    NOT NULL,
    [GLGeneralInfoId]        VARCHAR (10)    NOT NULL,
    [AlternativeGLId]        VARCHAR (10)    NULL,
    [Sequence]               DECIMAL (18, 2) NOT NULL,
    [TaxCategory]            VARCHAR (15)    NULL,
    [PostingWithoutTaxAllow] BIT             NULL,
    [Active]                 BIT             NOT NULL,
    [Archive]                BIT             NOT NULL,
    [AddedBy]                VARCHAR (30)    NOT NULL,
    [AddedDate]              DATETIME        NOT NULL,
    [AddedFromIP]            VARCHAR (15)    NOT NULL,
    [UpdatedBy]              VARCHAR (30)    NULL,
    [UpdatedDate]            DATETIME        NULL,
    [UpdatedFromIP]          VARCHAR (15)    NULL,
    CONSTRAINT [PK_GLCompanyInfo] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_GLCompanyInfo_AlternativeGL] FOREIGN KEY ([AlternativeGLId]) REFERENCES [HKP].[AlternativeGL] ([Id]),
    CONSTRAINT [FK_GLCompanyInfo_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_GLCompanyInfo_GLGeneralInfo] FOREIGN KEY ([GLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id])
);

