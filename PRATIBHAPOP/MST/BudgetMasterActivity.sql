CREATE TABLE [MST].[BudgetMasterActivity] (
    [Id]             VARCHAR (20) NOT NULL,
    [BudgetMasterId] VARCHAR (20) NOT NULL,
    [ActivityId]     VARCHAR (10) NOT NULL,
    [Active]         BIT          NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    [IsDefault]      BIT          DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_BudgetMasterActivity] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BudgetMasterActivity_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_BudgetMasterActivity_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id])
);

