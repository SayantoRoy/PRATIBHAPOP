CREATE TABLE [SEC].[UserLockLog] (
    [Id]               VARCHAR (36) NOT NULL,
    [CompanyGroupId]   VARCHAR (10) NOT NULL,
    [UserId]           VARCHAR (10) NOT NULL,
    [UserLockedDate]   DATETIME     NOT NULL,
    [UserUnLockedDate] DATETIME     NULL,
    [UnlockBy]         VARCHAR (30) NULL,
    CONSTRAINT [PK_UserLockLog] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserLockLog_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_UserLockLog_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

