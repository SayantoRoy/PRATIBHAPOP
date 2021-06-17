CREATE TABLE [HKP].[PartyBrand] (
    [Id]            VARCHAR (10)  NOT NULL,
    [PartyGroupId]  VARCHAR (10)  NOT NULL,
    [PartyId]       VARCHAR (10)  NULL,
    [BrandId]       VARCHAR (10)  NULL,
    [Description]   VARCHAR (250) NULL,
    [Remarks]       VARCHAR (250) NULL,
    [Active]        BIT           NOT NULL,
    [Archive]       BIT           NOT NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    CONSTRAINT [PK_PartyBrand] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PartyBrand_Brand] FOREIGN KEY ([BrandId]) REFERENCES [SCS].[Brand] ([Id]),
    CONSTRAINT [FK_PartyBrand_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_PartyBrand_PartyGroup] FOREIGN KEY ([PartyGroupId]) REFERENCES [HKP].[PartyGroup] ([Id])
);

