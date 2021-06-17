CREATE TABLE [HKP].[ProductionResources] (
    [Id]            VARCHAR (10)    NOT NULL,
    [ResourceName]  VARCHAR (100)   NOT NULL,
    [Quantity]      DECIMAL (18, 4) NOT NULL,
    [UOMId]         VARCHAR (10)    NOT NULL,
    [PlantId]       VARCHAR (10)    NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIp]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIp] VARCHAR (15)    NULL,
    CONSTRAINT [PK__Resource__3214EC0767439402] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__Resources__Plant__564CF689] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK__Resources__UOMId__5558D250] FOREIGN KEY ([UOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

