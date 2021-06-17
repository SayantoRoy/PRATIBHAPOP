﻿CREATE TABLE [dbo].[BOMSKUMapping] (
    [Id]                             VARCHAR (20)  NOT NULL,
    [BOMDetailId]                    VARCHAR (20)  NULL,
    [FGFirstCharacteristicsId]       VARCHAR (10)  NULL,
    [FGFirstCharacteristicsValueId]  VARCHAR (10)  NULL,
    [FGSecondCharacteristicsId]      VARCHAR (10)  NULL,
    [FGSecondCharacteristicsValueId] VARCHAR (10)  NULL,
    [FGThirdCharacteristicsId]       VARCHAR (10)  NULL,
    [FGThirdCharacteristicsValueId]  VARCHAR (10)  NULL,
    [RMFirstCharacteristicsId]       VARCHAR (10)  NULL,
    [RMFirstCharacteristicsValueId]  VARCHAR (10)  NULL,
    [RMSecondCharacteristicsId]      VARCHAR (10)  NULL,
    [RMSecondCharacteristicsValueId] VARCHAR (10)  NULL,
    [RMThirdCharacteristicsId]       VARCHAR (10)  NULL,
    [RMThirdCharacteristicsValueId]  VARCHAR (10)  NULL,
    [Description]                    VARCHAR (250) NULL,
    [AddedBy]                        VARCHAR (30)  NOT NULL,
    [AddedDate]                      DATETIME      NOT NULL,
    [AddedFromIP]                    VARCHAR (15)  NOT NULL,
    [UpdatedBy]                      VARCHAR (30)  NULL,
    [UpdatedDate]                    DATETIME      NULL,
    [UpdatedFromIP]                  VARCHAR (15)  NULL,
    [IsFirstCharacteristicCommon]    BIT           DEFAULT ((0)) NOT NULL,
    [IsSecondCharacteristicCommon]   BIT           DEFAULT ((0)) NOT NULL,
    [IsThirdCharacteristicCommon]    BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_BOMSKUMapping] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BOMSKUMapping_BOMDetail] FOREIGN KEY ([BOMDetailId]) REFERENCES [dbo].[BOMDetail] ([Id])
);

