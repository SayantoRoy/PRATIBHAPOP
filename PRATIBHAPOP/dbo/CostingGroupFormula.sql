CREATE TABLE [dbo].[CostingGroupFormula] (
    [Id]             VARCHAR (30) NOT NULL,
    [CostingGroupId] VARCHAR (10) NULL,
    [CostingType]    VARCHAR (15) NULL,
    [FormulaId]      VARCHAR (50) NULL,
    [Formula]        VARCHAR (50) NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CostingGroupFormula] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CostingGroupFormula_CostingGroup] FOREIGN KEY ([CostingGroupId]) REFERENCES [HKP].[CostingGroup] ([Id])
);

