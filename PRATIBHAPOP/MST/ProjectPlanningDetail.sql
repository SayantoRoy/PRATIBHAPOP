CREATE TABLE [MST].[ProjectPlanningDetail] (
    [Id]                           VARCHAR (10)    NOT NULL,
    [ProjectPlanningId]            VARCHAR (10)    NOT NULL,
    [BudgetMasterId]               VARCHAR (20)    NOT NULL,
    [ProjectPlanningCategoryId]    VARCHAR (10)    NULL,
    [ProjectPlanningSubCategoryId] VARCHAR (10)    NULL,
    [AddedBy]                      VARCHAR (30)    NOT NULL,
    [AddedDate]                    DATETIME        NOT NULL,
    [AddedFromIP]                  VARCHAR (15)    NOT NULL,
    [UpdatedBy]                    VARCHAR (30)    NULL,
    [UpdatedDate]                  DATETIME        NULL,
    [UpdatedFromIP]                VARCHAR (15)    NULL,
    [LocalAmount]                  DECIMAL (18, 4) NULL,
    [ImportAmount]                 DECIMAL (18, 4) NULL,
    CONSTRAINT [PK__ProjectP__3214EC078195B914] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProjectPlanningDetail_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_ProjectPlanningDetail_ProjectPlanning] FOREIGN KEY ([ProjectPlanningId]) REFERENCES [MST].[ProjectPlanning] ([Id]),
    CONSTRAINT [FK_ProjectPlanningDetail_ProjectPlanningCategory] FOREIGN KEY ([ProjectPlanningCategoryId]) REFERENCES [HKP].[ProjectPlanningCategory] ([Id]),
    CONSTRAINT [FK_ProjectPlanningDetail_ProjectPlanningSubCategory] FOREIGN KEY ([ProjectPlanningSubCategoryId]) REFERENCES [HKP].[ProjectPlanningSubCategory] ([Id])
);

