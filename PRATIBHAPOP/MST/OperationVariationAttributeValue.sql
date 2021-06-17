CREATE TABLE [MST].[OperationVariationAttributeValue] (
    [Id]                        VARCHAR (10) NOT NULL,
    [OperationId]               VARCHAR (20) NOT NULL,
    [OperationAttributeId]      VARCHAR (10) NOT NULL,
    [OperationAttributeValueId] VARCHAR (10) NULL,
    [OperationVariationId]      VARCHAR (10) NOT NULL,
    [AttributeValueFreeText]    VARCHAR (50) NULL,
    [AddedBy]                   VARCHAR (30) NOT NULL,
    [AddedDate]                 DATETIME     NOT NULL,
    [AddedFromIP]               VARCHAR (15) NOT NULL,
    [UpdatedBy]                 VARCHAR (30) NULL,
    [UpdatedDate]               DATETIME     NULL,
    [UpdatedFromIP]             VARCHAR (15) NULL,
    CONSTRAINT [PK_OperationVariationAttributeValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OperationVariationAttributeValue_Operation] FOREIGN KEY ([OperationId]) REFERENCES [MST].[Operation] ([Id]),
    CONSTRAINT [FK_OperationVariationAttributeValue_OperationAttribute] FOREIGN KEY ([OperationAttributeId]) REFERENCES [MST].[OperationAttribute] ([Id]),
    CONSTRAINT [FK_OperationVariationAttributeValue_OperationAttributeValue] FOREIGN KEY ([OperationAttributeValueId]) REFERENCES [MST].[OperationAttributeValue] ([Id]),
    CONSTRAINT [FK_OperationVariationAttributeValue_OperationVariation] FOREIGN KEY ([OperationVariationId]) REFERENCES [MST].[OperationVariation] ([Id])
);

