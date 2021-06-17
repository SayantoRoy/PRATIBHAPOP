CREATE TABLE [MST].[RecruitmentPlanningDetail] (
    [Id]                    VARCHAR (30)  NOT NULL,
    [ManpowerBudgetId]      VARCHAR (10)  NOT NULL,
    [RecruitmentGroupId]    VARCHAR (10)  NOT NULL,
    [RecruitmentPlanningId] VARCHAR (20)  NOT NULL,
    [Male]                  SMALLINT      NOT NULL,
    [Female]                SMALLINT      NOT NULL,
    [TotalManpower]         SMALLINT      NOT NULL,
    [Remarks]               VARCHAR (250) NULL,
    [OnBoardDate]           DATETIME      NULL,
    [Active]                BIT           NOT NULL,
    [Archive]               BIT           NOT NULL,
    [AddedBy]               VARCHAR (30)  NOT NULL,
    [AddedDate]             DATETIME      NOT NULL,
    [AddedFromIP]           VARCHAR (15)  NOT NULL,
    [UpdatedBy]             VARCHAR (30)  NULL,
    [UpdatedDate]           DATETIME      NULL,
    [UpdatedFromIP]         VARCHAR (15)  NULL,
    CONSTRAINT [PK_RecruitmentPlanningDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RecruitmentPlanningDetail_ManpowerBudget] FOREIGN KEY ([ManpowerBudgetId]) REFERENCES [MST].[ManpowerBudget] ([Id]),
    CONSTRAINT [FK_RecruitmentPlanningDetail_RecruitmentGroup] FOREIGN KEY ([RecruitmentGroupId]) REFERENCES [HKP].[RecruitmentGroup] ([Id]),
    CONSTRAINT [FK_RecruitmentPlanningDetail_RecruitmentPlanning] FOREIGN KEY ([RecruitmentPlanningId]) REFERENCES [MST].[RecruitmentPlanning] ([Id])
);

