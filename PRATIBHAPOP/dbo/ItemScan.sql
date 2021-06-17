CREATE TABLE [dbo].[ItemScan] (
    [Id]          VARCHAR (20)  NOT NULL,
    [WorkDate]    DATETIME      NOT NULL,
    [Time]        DATETIME      NOT NULL,
    [ShiftId]     VARCHAR (30)  NOT NULL,
    [Grade]       VARCHAR (30)  NOT NULL,
    [Remarks]     VARCHAR (250) NULL,
    [AddedBy]     VARCHAR (30)  NOT NULL,
    [AddedDate]   DATETIME      NOT NULL,
    [UpdatedBy]   VARCHAR (30)  NULL,
    [UpdatedDate] DATETIME      NULL,
    [PurposeId]   VARCHAR (20)  NULL,
    [LocMasterId] VARCHAR (20)  NULL,
    CONSTRAINT [PK__ItemScan] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__ItemScan_ShiftId] FOREIGN KEY ([ShiftId]) REFERENCES [dbo].[ShiftDefination] ([SystemID]),
    CONSTRAINT [FK_ItemScan_LocMasterId] FOREIGN KEY ([LocMasterId]) REFERENCES [MST].[MaterialMovementMaster] ([Id]),
    CONSTRAINT [FK_ItemScan_PurposeId] FOREIGN KEY ([PurposeId]) REFERENCES [HKP].[MaterialMovementPurpose] ([Id])
);

