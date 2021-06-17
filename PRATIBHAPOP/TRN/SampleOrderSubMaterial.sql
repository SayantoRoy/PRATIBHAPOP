﻿CREATE TABLE [TRN].[SampleOrderSubMaterial] (
    [Id]                           VARCHAR (10)    NOT NULL,
    [SampleOrderId]                VARCHAR (10)    NOT NULL,
    [TestingStandardId]            VARCHAR (10)    NULL,
    [MaterialMasterId]             VARCHAR (30)    NULL,
    [ArticleId]                    VARCHAR (10)    NULL,
    [MaterialGroupMasterId]        VARCHAR (10)    NOT NULL,
    [UoMId]                        VARCHAR (10)    NULL,
    [CurrencyId]                   VARCHAR (10)    NULL,
    [FirstCharacteristicsId]       VARCHAR (10)    NULL,
    [FirstCharacteristicsValueId]  VARCHAR (10)    NULL,
    [SecondCharacteristicsId]      VARCHAR (10)    NULL,
    [SecondCharacteristicsValueId] VARCHAR (10)    NULL,
    [ThirdCharacteristicsId]       VARCHAR (10)    NULL,
    [ThirdCharacteristicsValueId]  VARCHAR (10)    NULL,
    [Name]                         VARCHAR (100)   NULL,
    [Qty]                          INT             NULL,
    [Rate]                         DECIMAL (18, 4) NULL,
    [DeliveryDate]                 DATE            NULL,
    [Remarks]                      VARCHAR (250)   NULL,
    [AddedBy]                      VARCHAR (30)    NOT NULL,
    [AddedDate]                    DATETIME        NOT NULL,
    [AddedFromIP]                  VARCHAR (15)    NOT NULL,
    [UpdatedBy]                    VARCHAR (30)    NULL,
    [UpdatedDate]                  DATETIME        NULL,
    [UpdatedFromIP]                VARCHAR (15)    NULL,
    [IsConfirmed]                  BIT             NOT NULL,
    CONSTRAINT [PK_SampleSalesOrderSubMaterial] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_Characteristics1] FOREIGN KEY ([FirstCharacteristicsId]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_Characteristics2] FOREIGN KEY ([SecondCharacteristicsId]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_Characteristics3] FOREIGN KEY ([ThirdCharacteristicsId]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_CharacteristicsValue1] FOREIGN KEY ([FirstCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_CharacteristicsValue2] FOREIGN KEY ([SecondCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_CharacteristicsValue3] FOREIGN KEY ([ThirdCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_MaterialGroupMaster] FOREIGN KEY ([MaterialGroupMasterId]) REFERENCES [MST].[MaterialGroupMaster] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_SampleSalesOrder] FOREIGN KEY ([SampleOrderId]) REFERENCES [TRN].[SampleOrder] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_SubMaterial] FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_TestingStandard] FOREIGN KEY ([TestingStandardId]) REFERENCES [SCS].[TestingStandard] ([Id]),
    CONSTRAINT [FK_SampleSalesOrderSubMaterial_UnitOfMeasurement] FOREIGN KEY ([UoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);
