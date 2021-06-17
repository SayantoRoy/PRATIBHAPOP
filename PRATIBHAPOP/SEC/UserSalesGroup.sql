CREATE TABLE [SEC].[UserSalesGroup] (
    [Id]            VARCHAR (10) NOT NULL,
    [SalesGroupId]  VARCHAR (10) NOT NULL,
    [UserId]        VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_UserSalesGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserSalesGroup_SalesGroup] FOREIGN KEY ([SalesGroupId]) REFERENCES [ORG].[SalesGroup] ([Id]),
    CONSTRAINT [FK_UserSalesGroup_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

