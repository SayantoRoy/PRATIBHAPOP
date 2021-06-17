CREATE TABLE [MST].[MaterialMasterAlternativeUOM] (
    [Id]                   VARCHAR (10)    NOT NULL,
    [MaterialMasterId]     VARCHAR (30)    NOT NULL,
    [AlternativeUOMId]     VARCHAR (10)    NOT NULL,
    [BaseUOMId]            VARCHAR (10)    NOT NULL,
    [AlternativeUOMFactor] DECIMAL (18, 2) NOT NULL,
    [BaseUOMFactor]        DECIMAL (18, 8) NOT NULL,
    [Active]               BIT             NOT NULL,
    [Archive]              BIT             NOT NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    CONSTRAINT [PK_MaterialMasterAlternativeUOM] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterAlternativeUOM_AlternativeUOMId] FOREIGN KEY ([AlternativeUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_MaterialMasterAlternativeUOM_BaseUOMId] FOREIGN KEY ([BaseUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_MaterialMasterAlternativeUOM_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id])
);

