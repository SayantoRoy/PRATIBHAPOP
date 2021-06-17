CREATE TABLE [ORG].[PurchaseOrganisationMaster] (
    [Id]                     VARCHAR (10)  NOT NULL,
    [CompanyId]              VARCHAR (10)  NOT NULL,
    [PlantId]                VARCHAR (10)  NOT NULL,
    [PurchaseOrganisationId] VARCHAR (10)  NOT NULL,
    [Description]            VARCHAR (250) NULL,
    [Remarks]                VARCHAR (250) NULL,
    [Active]                 BIT           NOT NULL,
    [Archive]                BIT           NOT NULL,
    [AddedBy]                VARCHAR (30)  NOT NULL,
    [AddedDate]              DATETIME      NOT NULL,
    [AddedFromIP]            VARCHAR (15)  NOT NULL,
    [UpdatedBy]              VARCHAR (30)  NULL,
    [UpdatedDate]            DATETIME      NULL,
    [UpdatedFromIP]          VARCHAR (15)  NULL,
    CONSTRAINT [PK_PurchaseOrganisationMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PurchaseOrganisationMaster_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_PurchaseOrganisationMaster_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_PurchaseOrganisationMaster_PurchaseOrganisation] FOREIGN KEY ([PurchaseOrganisationId]) REFERENCES [ORG].[PurchaseOrganisation] ([Id])
);

