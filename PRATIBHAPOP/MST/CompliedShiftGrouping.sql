CREATE TABLE [MST].[CompliedShiftGrouping] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [PlantId]        VARCHAR (10) NOT NULL,
    [Code]           VARCHAR (10) NOT NULL,
    [Description]    VARCHAR (50) NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CompliedShiftGrouping] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompliedShiftGrouping_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompliedShiftGrouping_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

