CREATE TABLE [TRN].[MasterOrderAttributeValue] (
    [Id]                        VARCHAR (10)  NOT NULL,
    [MasterOrderItemId]         VARCHAR (10)  NOT NULL,
    [AttributeId]               VARCHAR (10)  NOT NULL,
    [AttributeValueId]          VARCHAR (10)  NULL,
    [ValueFreeText]             VARCHAR (20)  NULL,
    [ReferenceNo]               VARCHAR (250) NULL,
    [ReferenceSampleandRemarks] VARCHAR (255) NULL,
    [AddedBy]                   VARCHAR (30)  NOT NULL,
    [AddedDate]                 DATETIME      NOT NULL,
    [AddedFromIP]               VARCHAR (15)  NOT NULL,
    [UpdatedBy]                 VARCHAR (30)  NULL,
    [UpdatedDate]               DATETIME      NULL,
    [UpdatedFromIP]             VARCHAR (15)  NULL,
    [ValueRemarks]              VARCHAR (20)  NULL,
    CONSTRAINT [PK_MasterOrderAtributeValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MasterOrderAtributeValue_MasterOrderItem] FOREIGN KEY ([MasterOrderItemId]) REFERENCES [TRN].[MasterOrderItem] ([Id]),
    CONSTRAINT [FK_MasterOrderAtributeValue_MaterialAttribute] FOREIGN KEY ([AttributeId]) REFERENCES [HKP].[MaterialAttribute] ([Id]),
    CONSTRAINT [FK_MasterOrderAtributeValue_MaterialAttributeValue] FOREIGN KEY ([AttributeValueId]) REFERENCES [HKP].[MaterialAttributeValue] ([Id])
);

