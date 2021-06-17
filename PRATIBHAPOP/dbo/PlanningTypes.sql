CREATE TABLE [dbo].[PlanningTypes] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [BaseProcessId]  VARCHAR (10) NOT NULL,
    [PlanningType]   VARCHAR (20) NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    [UserName]       VARCHAR (50) NULL,
    [PlantId]        VARCHAR (10) NULL,
    CONSTRAINT [PK_PlanningTypes] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PlanningType_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PlanningType_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_PlanningType_Process] FOREIGN KEY ([BaseProcessId]) REFERENCES [HKP].[Process] ([Id])
);

