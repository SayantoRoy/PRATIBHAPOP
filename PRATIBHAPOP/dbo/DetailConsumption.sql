﻿CREATE TABLE [dbo].[DetailConsumption] (
    [Id]                           VARCHAR (30)    NOT NULL,
    [BOMDetailId]                  VARCHAR (20)    NULL,
    [RMMaterialMasterId]           VARCHAR (30)    NOT NULL,
    [RMArticleId]                  VARCHAR (10)    NULL,
    [Description]                  VARCHAR (250)   NULL,
    [CustomerSpec]                 VARCHAR (100)   NULL,
    [VendorSpec]                   VARCHAR (100)   NULL,
    [Consumption]                  DECIMAL (18, 4) NULL,
    [UoMId]                        VARCHAR (10)    NULL,
    [ProcessId]                    VARCHAR (10)    NULL,
    [VendorId]                     VARCHAR (10)    NULL,
    [WastagePer]                   DECIMAL (18, 2) NULL,
    [FirstCharacteristicsId]       VARCHAR (10)    NULL,
    [SecondCharacteristicsId]      VARCHAR (10)    NULL,
    [ThirdCharacteristicsId]       VARCHAR (10)    NULL,
    [FirstCharacteristicsValueId]  VARCHAR (10)    NULL,
    [SecondCharacteristicsValueId] VARCHAR (10)    NULL,
    [ThirdCharacteristicsValueId]  VARCHAR (10)    NULL,
    [IsSKUCommon]                  BIT             NULL,
    [AddedBy]                      VARCHAR (30)    NOT NULL,
    [AddedDate]                    DATETIME        NOT NULL,
    [AddedFromIP]                  VARCHAR (15)    NOT NULL,
    [UpdatedBy]                    VARCHAR (30)    NULL,
    [UpdatedDate]                  DATETIME        NULL,
    [UpdatedFromIP]                VARCHAR (15)    NULL,
    [Sequence]                     DECIMAL (18, 2) CONSTRAINT [DF__DetailCon__Seque__031646B6] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_DetailConsumption] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DetailConsumption_BOMDetail] FOREIGN KEY ([BOMDetailId]) REFERENCES [dbo].[BOMDetail] ([Id]),
    CONSTRAINT [FK_DetailConsumption_FirstCharacteristic] FOREIGN KEY ([FirstCharacteristicsId]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_DetailConsumption_FirstCharacteristicsValue] FOREIGN KEY ([FirstCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [FK_DetailConsumption_MaterialMaster] FOREIGN KEY ([RMMaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_DetailConsumption_MaterialMasterArticle] FOREIGN KEY ([RMArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_DetailConsumption_Party] FOREIGN KEY ([VendorId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_DetailConsumption_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_DetailConsumption_SecondCharacteristics] FOREIGN KEY ([SecondCharacteristicsId]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_DetailConsumption_SecondCharacteristicsValue] FOREIGN KEY ([SecondCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [FK_DetailConsumption_ThirdCharacteristics] FOREIGN KEY ([ThirdCharacteristicsId]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_DetailConsumption_ThirdCharacteristicsValue] FOREIGN KEY ([ThirdCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [FK_DetailConsumption_UnitOfMeasurement] FOREIGN KEY ([UoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);
