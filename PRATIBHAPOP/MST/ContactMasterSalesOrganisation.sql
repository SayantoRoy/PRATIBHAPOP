CREATE TABLE [MST].[ContactMasterSalesOrganisation] (
    [Id]                  VARCHAR (50) NOT NULL,
    [ContactMasterId]     VARCHAR (20) NOT NULL,
    [SalesOrganisationId] VARCHAR (10) NOT NULL,
    [Active]              BIT          NOT NULL,
    [Archive]             BIT          NOT NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    CONSTRAINT [PK_ContactMasterSalesOrganisation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ContactMasterSalesOrganisation_ContactMaster] FOREIGN KEY ([ContactMasterId]) REFERENCES [MST].[ContactMaster] ([Id]),
    CONSTRAINT [FK_ContactMasterSalesOrganisation_SalesOrganisation] FOREIGN KEY ([SalesOrganisationId]) REFERENCES [ORG].[SalesOrganisation] ([Id])
);

