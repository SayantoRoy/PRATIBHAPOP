CREATE TABLE [TRN].[ProductDefinitionEfficency] (
    [Id]                  VARCHAR (10)    NOT NULL,
    [ProductDefinitionId] VARCHAR (10)    NOT NULL,
    [ColumnSequence]      INT             NOT NULL,
    [EfficencyName]       VARCHAR (50)    NOT NULL,
    [NoOfWorkStation]     INT             NOT NULL,
    [EfficencyPercentage] DECIMAL (18, 4) NOT NULL,
    [AddedBy]             VARCHAR (30)    NOT NULL,
    [AddedDate]           DATETIME        NOT NULL,
    [AddedFromIP]         VARCHAR (15)    NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    [SPT]                 INT             NOT NULL,
    CONSTRAINT [PK_ProductDefinitionEfficency] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductDefinitionEfficency_ProductDefinition] FOREIGN KEY ([ProductDefinitionId]) REFERENCES [TRN].[ProductDefinition] ([Id])
);

