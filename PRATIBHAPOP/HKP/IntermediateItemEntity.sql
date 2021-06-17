CREATE TABLE [HKP].[IntermediateItemEntity] (
    [Id]                 VARCHAR (10) NOT NULL,
    [EntityId]           VARCHAR (10) NULL,
    [IntermediateItemId] VARCHAR (10) NOT NULL,
    [Active]             BIT          NOT NULL,
    [Archive]            BIT          NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_IntermediateItemEntity] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_IntermediateItemEntity_IntermediateItem] FOREIGN KEY ([IntermediateItemId]) REFERENCES [HKP].[IntermediateItem] ([Id])
);

