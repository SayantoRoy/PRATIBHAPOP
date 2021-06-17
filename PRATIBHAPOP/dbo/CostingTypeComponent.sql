CREATE TABLE [dbo].[CostingTypeComponent] (
    [Id]                 VARCHAR (10)    NOT NULL,
    [Sequence]           DECIMAL (18, 2) NOT NULL,
    [CostingComponentId] VARCHAR (10)    NULL,
    [CostingType]        VARCHAR (15)    NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CostingTypeComponent_CostingComponent ] FOREIGN KEY ([CostingComponentId]) REFERENCES [HKP].[CostingComponent] ([Id])
);

