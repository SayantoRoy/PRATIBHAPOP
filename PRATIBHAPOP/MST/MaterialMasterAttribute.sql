CREATE TABLE [MST].[MaterialMasterAttribute] (
    [Id]                  VARCHAR (10)    NOT NULL,
    [MaterialMasterId]    VARCHAR (30)    NOT NULL,
    [MaterialAttributeId] VARCHAR (10)    NOT NULL,
    [Sequence]            DECIMAL (18, 2) NOT NULL,
    [IsFreeField]         BIT             NOT NULL,
    [IsPreDefinedField]   BIT             NOT NULL,
    [IsMandatory]         BIT             NOT NULL,
    [Active]              BIT             NOT NULL,
    [Archive]             BIT             NOT NULL,
    [AddedBy]             VARCHAR (30)    NOT NULL,
    [AddedDate]           DATETIME        NOT NULL,
    [AddedFromIP]         VARCHAR (15)    NOT NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    CONSTRAINT [PK_MaterialMasterAttribute] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterAttribute_MaterialAttribute] FOREIGN KEY ([MaterialAttributeId]) REFERENCES [HKP].[MaterialAttribute] ([Id]),
    CONSTRAINT [FK_MaterialMasterAttribute_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id])
);

