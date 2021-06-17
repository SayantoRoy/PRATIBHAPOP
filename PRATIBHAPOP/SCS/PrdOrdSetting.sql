CREATE TABLE [SCS].[PrdOrdSetting] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [CompanyId]      VARCHAR (10) NOT NULL,
    [PlantId]        VARCHAR (10) NOT NULL,
    [ColumnSequence] INT          NOT NULL,
    [ColumnName]     VARCHAR (50) NOT NULL,
    [ColumnAlias]    VARCHAR (50) NULL,
    [MargeAllowed]   BIT          NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_PrdOrdSetting] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PrdOrdSetting_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_PrdOrdSetting_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PrdOrdSetting_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

