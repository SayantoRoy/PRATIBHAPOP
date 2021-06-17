CREATE TABLE [dbo].[OrderCostingDetailTemplate] (
    [Id]                                  VARCHAR (10)    NOT NULL,
    [CostingComponentId]                  VARCHAR (10)    NULL,
    [OrderCostingVersionMasterTemplateId] VARCHAR (10)    NULL,
    [Sequence]                            DECIMAL (18, 2) NULL,
    [CostingValue]                        DECIMAL (18, 2) NULL,
    [BuyerTarget]                         DECIMAL (18, 2) NULL,
    [AddedBy]                             VARCHAR (30)    NOT NULL,
    [AddedDate]                           DATETIME        NOT NULL,
    [AddedFromIP]                         VARCHAR (15)    NOT NULL,
    [UpdatedBy]                           VARCHAR (30)    NULL,
    [UpdatedDate]                         DATETIME        NULL,
    [UpdatedFromIP]                       VARCHAR (15)    NULL,
    [OrderCostingMasterTemplateId]        VARCHAR (10)    NULL,
    CONSTRAINT [PK_OrderCostingDetailTemplate] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([OrderCostingMasterTemplateId]) REFERENCES [dbo].[OrderCostingMasterTemplate] ([Id]),
    CONSTRAINT [FK_OrderCostingDetailTemplate_CostingComponent] FOREIGN KEY ([CostingComponentId]) REFERENCES [HKP].[CostingComponent] ([Id]),
    CONSTRAINT [FK_OrderCostingDetailTemplate_OrderCostingVersionMasterTemplate] FOREIGN KEY ([OrderCostingVersionMasterTemplateId]) REFERENCES [dbo].[OrderCostingVersionMasterTemplate] ([Id])
);

