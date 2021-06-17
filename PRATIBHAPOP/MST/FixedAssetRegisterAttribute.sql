CREATE TABLE [MST].[FixedAssetRegisterAttribute] (
    [Id]                    NVARCHAR (10)   NOT NULL,
    [FixedAssetRegisterId]  VARCHAR (30)    NOT NULL,
    [FixedAssetAttributeId] VARCHAR (10)    NOT NULL,
    [Sequence]              DECIMAL (18, 2) NULL,
    [IsFreeField]           BIT             NOT NULL,
    [IsPreDefinedField]     BIT             NOT NULL,
    [IsMandatory]           BIT             NOT NULL,
    [Active]                BIT             NOT NULL,
    [Archive]               BIT             NOT NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    CONSTRAINT [PK_FixedAssetMasterAttribute] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FixedAssetMasterAttribute_FixedAssetAttribute] FOREIGN KEY ([FixedAssetAttributeId]) REFERENCES [HKP].[FixedAssetAttribute] ([Id]),
    CONSTRAINT [FK_FixedAssetRegisterAttribute_FixedAssetRegister] FOREIGN KEY ([FixedAssetRegisterId]) REFERENCES [TRN].[FixedAssetRegister] ([Id])
);

