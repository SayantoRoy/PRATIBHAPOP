CREATE TABLE [ORG].[EntityCostCenter] (
    [Id]            VARCHAR (10) NOT NULL,
    [CompanyId]     VARCHAR (10) NULL,
    [EntityId]      VARCHAR (10) NULL,
    [CostCenterId]  VARCHAR (10) NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_EntityCostCenter] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EntityCostCenter_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_EntityCostCenter_CostCenter] FOREIGN KEY ([CostCenterId]) REFERENCES [ORG].[CostCenter] ([Id]),
    CONSTRAINT [FK_EntityCostCenter_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id])
);

