CREATE TABLE [SCS].[PlantWiseTermsAndConditions] (
    [Id]             VARCHAR (10)   NOT NULL,
    [CompanyGroupId] VARCHAR (10)   NULL,
    [PlantId]        VARCHAR (10)   NULL,
    [Description1]   NVARCHAR (MAX) NULL,
    [Description2]   NVARCHAR (MAX) NULL,
    [AddedBy]        VARCHAR (30)   NOT NULL,
    [AddedDate]      DATETIME       NOT NULL,
    [AddedFromIP]    VARCHAR (15)   NOT NULL,
    [UpdatedBy]      VARCHAR (30)   NULL,
    [UpdatedDate]    DATETIME       NULL,
    [UpdatedFromIP]  VARCHAR (15)   NULL,
    CONSTRAINT [PK_PlantWiseTermsAndConditions] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PlantWiseTermsAndConditions_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PlantWiseTermsAndConditions_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

