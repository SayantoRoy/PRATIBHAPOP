CREATE TABLE [SCS].[ProcessAlternativeUoM] (
    [Id]                   INT             IDENTITY (1, 1) NOT NULL,
    [ProcessUoMId]         VARCHAR (10)    NOT NULL,
    [AlternativeUoMId]     VARCHAR (10)    NOT NULL,
    [BaseUoMId]            VARCHAR (10)    NOT NULL,
    [AlternativeUoMFactor] DECIMAL (18, 4) NOT NULL,
    [BaseUoMFactor]        DECIMAL (18, 4) NOT NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    CONSTRAINT [PK_ProcessAlternativeUoM] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProcessAlternativeUoM_AlternativeUoM] FOREIGN KEY ([AlternativeUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_ProcessAlternativeUoM_BaseUoM] FOREIGN KEY ([BaseUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_ProcessAlternativeUoM_ProcessUoM] FOREIGN KEY ([ProcessUoMId]) REFERENCES [SCS].[ProcessUoM] ([Id])
);

