CREATE TABLE [SCS].[WorkCenterMasterManpowerBudge] (
    [Id]                 VARCHAR (30) NOT NULL,
    [WorkCenterMasterId] VARCHAR (30) NOT NULL,
    [ManpowerBudgetId]   VARCHAR (10) NOT NULL,
    [NoOfResource]       INT          NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_WorkCenterMasterBudgetCode] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WorkCenterMasterBudgetCode_ManpowerBudget] FOREIGN KEY ([ManpowerBudgetId]) REFERENCES [MST].[ManpowerBudget] ([Id]),
    CONSTRAINT [FK_WorkCenterMasterBudgetCode_WorkCenterMaster] FOREIGN KEY ([WorkCenterMasterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id])
);

