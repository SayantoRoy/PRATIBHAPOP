CREATE TABLE [SEC].[UserPurchaseGroup] (
    [Id]              VARCHAR (10) NOT NULL,
    [PurchaseGroupId] VARCHAR (10) NOT NULL,
    [UserId]          VARCHAR (10) NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_UserPurchaseGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserPurchaseGroup_PurchaseGroup] FOREIGN KEY ([PurchaseGroupId]) REFERENCES [ORG].[PurchaseGroup] ([Id]),
    CONSTRAINT [FK_UserPurchaseGroup_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

