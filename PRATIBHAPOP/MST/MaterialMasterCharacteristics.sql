CREATE TABLE [MST].[MaterialMasterCharacteristics] (
    [Id]                VARCHAR (10)    NOT NULL,
    [MaterialMasterId]  VARCHAR (30)    NOT NULL,
    [CharacteristicsId] VARCHAR (10)    NOT NULL,
    [Sequence]          DECIMAL (18, 2) NOT NULL,
    [IsFreeField]       BIT             NOT NULL,
    [IsPreDefinedField] BIT             NOT NULL,
    [IsMandatory]       BIT             NOT NULL,
    [Active]            BIT             NOT NULL,
    [Archive]           BIT             NOT NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    CONSTRAINT [PK_MaterialMasterCharacteristics] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterCharacteristics_Characteristics] FOREIGN KEY ([CharacteristicsId]) REFERENCES [HKP].[Characteristics] ([Id]),
    CONSTRAINT [FK_MaterialMasterCharacteristics_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id])
);

