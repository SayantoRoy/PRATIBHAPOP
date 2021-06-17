CREATE TABLE [MST].[MaterialMasterRevenueBudget] (
    [Id]               INT          IDENTITY (1, 1) NOT NULL,
    [MaterialMasterId] VARCHAR (30) NOT NULL,
    [BudgetMasterId]   VARCHAR (20) NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_MaterialMasterRevenueBudget] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterRevenueBudget_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterRevenueBudgetCode_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id])
);

