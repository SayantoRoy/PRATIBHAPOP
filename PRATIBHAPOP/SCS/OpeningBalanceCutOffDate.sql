CREATE TABLE [SCS].[OpeningBalanceCutOffDate] (
    [Id]             VARCHAR (10)  NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [CompanyId]      VARCHAR (10)  NOT NULL,
    [PlantId]        VARCHAR (10)  NULL,
    [ModuleName]     VARCHAR (20)  NOT NULL,
    [CutOffDate]     DATETIME      NOT NULL,
    [IsEntityLevel]  BIT           NOT NULL,
    [Remarks]        VARCHAR (250) NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_OpeningBalanceCutOffDate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OpeningBalanceCutOffDate_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_OpeningBalanceCutOffDate_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_OpeningBalanceCutOffDate_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

