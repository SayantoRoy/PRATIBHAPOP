CREATE TABLE [TRN].[ProductionOrderEntity] (
    [Id]                VARCHAR (10) NOT NULL,
    [ProductionOrderId] VARCHAR (30) NULL,
    [EntityId]          VARCHAR (10) NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_ProductionOrderEntity] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductionOrderEntity_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id])
);

