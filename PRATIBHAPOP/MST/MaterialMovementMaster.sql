CREATE TABLE [MST].[MaterialMovementMaster] (
    [Id]               VARCHAR (20)  NOT NULL,
    [FromLocation]     VARCHAR (200) NOT NULL,
    [FromStorageLocId] VARCHAR (10)  NULL,
    [EntityId]         VARCHAR (10)  NOT NULL,
    [ItemId]           VARCHAR (20)  NOT NULL,
    [Tagtype]          VARCHAR (30)  NOT NULL,
    [Inventorycheck]   BIT           DEFAULT ((0)) NOT NULL,
    [AddedBy]          VARCHAR (30)  NOT NULL,
    [AddedDate]        DATETIME      NOT NULL,
    [UpdatedBy]        VARCHAR (30)  NULL,
    [UpdatedDate]      DATETIME      NULL,
    [PurposeId]        VARCHAR (20)  NOT NULL,
    [ToLocation]       VARCHAR (200) NULL,
    [ToStorageLocId]   VARCHAR (10)  NULL,
    CONSTRAINT [PK__MaterialMovementMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMovementMaster_EntityId] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_MaterialMovementMaster_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[MovementItems] ([Id]),
    CONSTRAINT [FK_MaterialMovementMaster_PurposeId] FOREIGN KEY ([PurposeId]) REFERENCES [HKP].[MaterialMovementPurpose] ([Id]),
    CONSTRAINT [FK_MaterialMovementMaster_StorageLocId] FOREIGN KEY ([FromStorageLocId]) REFERENCES [HKP].[MaterialStorage] ([Id]),
    CONSTRAINT [FK_MaterialMovementMaster_ToStorageLocId] FOREIGN KEY ([ToStorageLocId]) REFERENCES [HKP].[MaterialStorage] ([Id])
);

