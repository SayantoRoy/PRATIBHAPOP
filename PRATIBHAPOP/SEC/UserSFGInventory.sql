CREATE TABLE [SEC].[UserSFGInventory] (
    [Id]             VARCHAR (10) NOT NULL,
    [UserId]         VARCHAR (10) NOT NULL,
    [SFGInventoryId] VARCHAR (10) NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_UserSFGInventory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserSFGInventory_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id]),
    CONSTRAINT [FK_UserSFGMovement_SFGInventory] FOREIGN KEY ([SFGInventoryId]) REFERENCES [HKP].[SFGInventory] ([Id])
);

