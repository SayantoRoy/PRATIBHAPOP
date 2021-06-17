CREATE TABLE [dbo].[OrderCostingVersionMasterTemplate] (
    [Id]                           VARCHAR (10)  NOT NULL,
    [OrderCostingMasterTemplateId] VARCHAR (10)  NULL,
    [Version]                      INT           NULL,
    [Description]                  VARCHAR (250) NULL,
    [AddedBy]                      VARCHAR (30)  NOT NULL,
    [AddedDate]                    DATETIME      NOT NULL,
    [AddedFromIP]                  VARCHAR (15)  NOT NULL,
    [UpdatedBy]                    VARCHAR (30)  NULL,
    [UpdatedDate]                  DATETIME      NULL,
    [UpdatedFromIP]                VARCHAR (15)  NULL,
    CONSTRAINT [PK_OrderCostingVersionMasterTemplate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OrderCostingVersionMasterTemplate_OrderCostingMasterTemplate] FOREIGN KEY ([OrderCostingMasterTemplateId]) REFERENCES [dbo].[OrderCostingMasterTemplate] ([Id])
);

