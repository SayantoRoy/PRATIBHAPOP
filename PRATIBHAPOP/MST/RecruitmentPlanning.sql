CREATE TABLE [MST].[RecruitmentPlanning] (
    [Id]             VARCHAR (20)  NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [CompanyId]      VARCHAR (10)  NOT NULL,
    [PlantId]        VARCHAR (10)  NOT NULL,
    [UserName]       VARCHAR (50)  NOT NULL,
    [Remarks]        VARCHAR (250) NULL,
    [PlanningType]   VARCHAR (20)  NULL,
    [Active]         BIT           NOT NULL,
    [Archive]        BIT           NOT NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_RecruitmentPlanning] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RecruitmentPlanning_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_RecruitmentPlanning_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_RecruitmentPlanning_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

