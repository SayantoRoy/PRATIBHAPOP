﻿CREATE TABLE [MST].[VendorArticulation] (
    [Id]                     VARCHAR (10)     NOT NULL,
    [CountryId]              VARCHAR (10)     NOT NULL,
    [CompanyGroupId]         VARCHAR (10)     NOT NULL,
    [MaterialMasterId]       VARCHAR (30)     NOT NULL,
    [ArticleId]              VARCHAR (10)     NULL,
    [VendorId]               VARCHAR (10)     NOT NULL,
    [CurrencyId]             VARCHAR (10)     NOT NULL,
    [UoMId]                  VARCHAR (10)     NOT NULL,
    [VendorArticulateNumber] VARCHAR (80)     NOT NULL,
    [Rate]                   DECIMAL (18, 10) NOT NULL,
    [AddedBy]                VARCHAR (30)     NOT NULL,
    [AddedDate]              DATETIME         NOT NULL,
    [AddedFromIP]            VARCHAR (15)     NOT NULL,
    [UpdatedBy]              VARCHAR (30)     NULL,
    [UpdatedDate]            DATETIME         NULL,
    [UpdatedFromIP]          VARCHAR (15)     NULL,
    CONSTRAINT [PK_VendorArticulation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_VendorArticulation_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_VendorArticulation_Country] FOREIGN KEY ([CountryId]) REFERENCES [SCS].[Country] ([Id]),
    CONSTRAINT [FK_VendorArticulation_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_VendorArticulation_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_VendorArticulation_MaterialMasterArticle] FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_VendorArticulation_Party] FOREIGN KEY ([VendorId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_VendorArticulation_UoM] FOREIGN KEY ([UoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

