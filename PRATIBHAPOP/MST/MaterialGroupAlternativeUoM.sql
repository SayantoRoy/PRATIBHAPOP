CREATE TABLE [MST].[MaterialGroupAlternativeUoM] (
    [Id]                    VARCHAR (10)    NOT NULL,
    [MaterialGroupMasterId] VARCHAR (10)    NOT NULL,
    [AlternativeUoMId]      VARCHAR (10)    NOT NULL,
    [BaseUoMId]             VARCHAR (10)    NOT NULL,
    [AlternativeUoMFactor]  DECIMAL (18, 2) NOT NULL,
    [BaseUoMFactor]         DECIMAL (18, 8) NOT NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    CONSTRAINT [PK_MaterialGroupAlternativeUoM] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialGroupAlternativeUoM_UnitOfMeasurement] FOREIGN KEY ([BaseUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_MaterialGroupAlternativeUoM_UnitOfMeasurement1] FOREIGN KEY ([AlternativeUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

