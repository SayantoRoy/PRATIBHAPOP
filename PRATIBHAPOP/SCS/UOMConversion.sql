CREATE TABLE [SCS].[UOMConversion] (
    [Id]             VARCHAR (30)    NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [FromUOMId]      VARCHAR (10)    NOT NULL,
    [FromUOMFactor]  DECIMAL (18, 4) NULL,
    [ToUOMId]        VARCHAR (10)    NULL,
    [ToUOMFactor]    DECIMAL (18, 4) NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_UOMConversion] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UOMConversion_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_UOMConversion_FromUOM] FOREIGN KEY ([FromUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_UOMConversion_ToUOM] FOREIGN KEY ([ToUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

