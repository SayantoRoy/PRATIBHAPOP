CREATE TABLE [MST].[EntitySFGInventory] (
    [Id]                     VARCHAR (10) NOT NULL,
    [EntityId]               VARCHAR (10) NOT NULL,
    [SFGInventoryId]         VARCHAR (10) NOT NULL,
    [ProductionBookingLevel] VARCHAR (15) NULL,
    [AddedBy]                VARCHAR (30) NOT NULL,
    [AddedDate]              DATETIME     NOT NULL,
    [AddedFromIP]            VARCHAR (15) NOT NULL,
    [UpdatedBy]              VARCHAR (30) NULL,
    [UpdatedDate]            DATETIME     NULL,
    [UpdatedFromIP]          VARCHAR (15) NULL,
    [LotNumberCapture]       BIT          DEFAULT ((0)) NOT NULL,
    [LotNumberMandatory]     BIT          DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SFGMovementEntity] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EntitySFGInventory_SFGInventory] FOREIGN KEY ([SFGInventoryId]) REFERENCES [HKP].[SFGInventory] ([Id]),
    CONSTRAINT [FK_SFGMovementEntity_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id])
);

