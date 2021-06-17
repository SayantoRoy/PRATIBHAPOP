CREATE TABLE [MST].[ManpowerBudgetDetail] (
    [Id]                          VARCHAR (50)  NOT NULL,
    [ManpowerBudgetId]            VARCHAR (10)  NOT NULL,
    [EffectiveDate]               DATETIME      NOT NULL,
    [Male]                        SMALLINT      NOT NULL,
    [Female]                      SMALLINT      NOT NULL,
    [TotalNumber]                 SMALLINT      NOT NULL,
    [Remarks]                     VARCHAR (250) NULL,
    [Active]                      BIT           NOT NULL,
    [Archive]                     BIT           NOT NULL,
    [AddedBy]                     VARCHAR (30)  NOT NULL,
    [AddedDate]                   DATETIME      NOT NULL,
    [AddedFromIP]                 VARCHAR (15)  NOT NULL,
    [UpdatedBy]                   VARCHAR (30)  NULL,
    [UpdatedDate]                 DATETIME      NULL,
    [UpdatedFromIP]               VARCHAR (15)  NULL,
    [RecruitmentGroupId]          VARCHAR (10)  NULL,
    [RecruitmentPlanningDetailId] VARCHAR (30)  NULL,
    CONSTRAINT [PK_ManpowerBudgetDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ManpowerBudgetDetail_ManpowerBudget] FOREIGN KEY ([ManpowerBudgetId]) REFERENCES [MST].[ManpowerBudget] ([Id]),
    CONSTRAINT [FK_ManpowerBudgetDetail_RecruitmentGroup] FOREIGN KEY ([RecruitmentGroupId]) REFERENCES [HKP].[RecruitmentGroup] ([Id]),
    CONSTRAINT [FK_ManpowerBudgetDetail_RecruitmentPlanningDetail] FOREIGN KEY ([RecruitmentPlanningDetailId]) REFERENCES [MST].[RecruitmentPlanningDetail] ([Id])
);

