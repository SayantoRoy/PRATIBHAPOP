CREATE TABLE [TRN].[FirstCharacteristics] (
    [Id]                     VARCHAR (20)    NOT NULL,
    [Sequence]               INT             NOT NULL,
    [SalesOrderId]           VARCHAR (20)    NOT NULL,
    [CharacteristicsId]      VARCHAR (10)    NOT NULL,
    [CharacteristicsValueId] VARCHAR (10)    NULL,
    [ValueFreeText]          VARCHAR (20)    NULL,
    [Qty]                    DECIMAL (18, 2) NOT NULL,
    [AddedBy]                VARCHAR (30)    NOT NULL,
    [AddedDate]              DATETIME        NOT NULL,
    [AddedFromIP]            VARCHAR (15)    NOT NULL,
    [UpdatedBy]              VARCHAR (30)    NULL,
    [UpdatedDate]            DATETIME        NULL,
    [UpdatedFromIP]          VARCHAR (15)    NULL,
    [SalesQty]               DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_FirstCharacteristics] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FirstCharacteristics_Characteristics] FOREIGN KEY ([CharacteristicsId]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_FirstCharacteristics_CharacteristicsValue] FOREIGN KEY ([CharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id])
);

