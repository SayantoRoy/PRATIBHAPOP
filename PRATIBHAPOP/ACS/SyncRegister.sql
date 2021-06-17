CREATE TABLE [ACS].[SyncRegister] (
    [Id]                 INT          IDENTITY (1, 1) NOT NULL,
    [CompanyGroupId]     VARCHAR (10) NOT NULL,
    [CompanyId]          VARCHAR (10) NOT NULL,
    [PlantId]            VARCHAR (10) NOT NULL,
    [SyncName]           VARCHAR (30) NOT NULL,
    [DatabaseName]       VARCHAR (50) NOT NULL,
    [PostingDate]        DATETIME     NOT NULL,
    [ProcessDate]        DATETIME     NOT NULL,
    [DocumentSeriesCode] VARCHAR (10) NULL,
    CONSTRAINT [PK_SyncRegister] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SyncRegister_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_SyncRegister_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SyncRegister_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

