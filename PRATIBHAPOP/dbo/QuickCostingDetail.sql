CREATE TABLE [dbo].[QuickCostingDetail] (
    [Id]                          VARCHAR (10)    NOT NULL,
    [CostingSubCategoryId]        VARCHAR (10)    NULL,
    [QuickCostingVersionMasterId] VARCHAR (10)    NULL,
    [Sequence]                    DECIMAL (18, 2) NULL,
    [CostingValue]                DECIMAL (18, 2) NULL,
    [AddedBy]                     VARCHAR (30)    NOT NULL,
    [AddedDate]                   DATETIME        NOT NULL,
    [AddedFromIP]                 VARCHAR (15)    NOT NULL,
    [UpdatedBy]                   VARCHAR (30)    NULL,
    [UpdatedDate]                 DATETIME        NULL,
    [UpdatedFromIP]               VARCHAR (15)    NULL,
    CONSTRAINT [PK_QuickCostingDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_QuickCostingDetail_QuickCostingDetail] FOREIGN KEY ([CostingSubCategoryId]) REFERENCES [HKP].[CostingSubCategory] ([Id]),
    CONSTRAINT [FK_QuickCostingDetail_QuickCostingVersionMaster] FOREIGN KEY ([QuickCostingVersionMasterId]) REFERENCES [dbo].[QuickCostingVersionMaster] ([Id])
);

