﻿CREATE TABLE [MST].[ContactMasterPurchaseOrganisation] (
    [Id]                     VARCHAR (50) NOT NULL,
    [ContactMasterId]        VARCHAR (20) NOT NULL,
    [PurchaseOrganisationId] VARCHAR (10) NOT NULL,
    [Active]                 BIT          NOT NULL,
    [Archive]                BIT          NOT NULL,
    [AddedBy]                VARCHAR (30) NOT NULL,
    [AddedDate]              DATETIME     NOT NULL,
    [AddedFromIP]            VARCHAR (15) NOT NULL,
    [UpdatedBy]              VARCHAR (30) NULL,
    [UpdatedDate]            DATETIME     NULL,
    [UpdatedFromIP]          VARCHAR (15) NULL,
    CONSTRAINT [PK_ContactMasterPurchaseOrganisation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ContactMasterPurchaseOrganisation_ContactMaster] FOREIGN KEY ([ContactMasterId]) REFERENCES [MST].[ContactMaster] ([Id]),
    CONSTRAINT [FK_ContactMasterPurchaseOrganisation_PurchaseOrganisation] FOREIGN KEY ([PurchaseOrganisationId]) REFERENCES [ORG].[PurchaseOrganisation] ([Id])
);

