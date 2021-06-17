CREATE TABLE [ORG].[SalesOrganisationPlant] (
    [Id]                  VARCHAR (10) NOT NULL,
    [CompanyId]           VARCHAR (10) NOT NULL,
    [PlantId]             VARCHAR (10) NOT NULL,
    [SalesOrganisationId] VARCHAR (10) NOT NULL,
    [Active]              BIT          NOT NULL,
    [Archive]             BIT          NOT NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    CONSTRAINT [PK_SalesOrganisationMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalesOrganisationMaster_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_SalesOrganisationMaster_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalesOrganisationMaster_SalesOrganisation] FOREIGN KEY ([SalesOrganisationId]) REFERENCES [ORG].[SalesOrganisation] ([Id])
);

