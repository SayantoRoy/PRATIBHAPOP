CREATE TABLE [TRN].[SampleOrderSubMaterialValue] (
    [Id]                             INT          IDENTITY (1, 1) NOT NULL,
    [SampleOrderId]                  VARCHAR (10) NOT NULL,
    [SampleOrderSubMaterialId]       VARCHAR (10) NOT NULL,
    [MaterialAttributeId]            VARCHAR (10) NOT NULL,
    [MaterialAttributeValueId]       VARCHAR (10) NULL,
    [MaterialAttributeValueFreeText] VARCHAR (50) NULL,
    [AddedBy]                        VARCHAR (30) NOT NULL,
    [AddedDate]                      DATETIME     NOT NULL,
    [AddedFromIP]                    VARCHAR (15) NOT NULL,
    [UpdatedBy]                      VARCHAR (30) NULL,
    [UpdatedDate]                    DATETIME     NULL,
    [UpdatedFromIP]                  VARCHAR (15) NULL,
    CONSTRAINT [PK_SampleSalesOrderSubMaterialValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SampleSalesOrderSubMaterialValue_MaterialAttribute] FOREIGN KEY ([MaterialAttributeId]) REFERENCES [HKP].[MaterialAttribute] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterialValue_MaterialAttributeValue] FOREIGN KEY ([MaterialAttributeValueId]) REFERENCES [HKP].[MaterialAttributeValue] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterialValue_SampleSalesOrder] FOREIGN KEY ([SampleOrderId]) REFERENCES [TRN].[SampleOrder] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterialValue_SampleSalesOrderSubMaterial] FOREIGN KEY ([SampleOrderSubMaterialId]) REFERENCES [TRN].[SampleOrderSubMaterial] ([Id])
);

