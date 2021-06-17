CREATE TABLE [SEC].[AuthTokenLockLog] (
    [Id]                    VARCHAR (36) NOT NULL,
    [CompanyGroupId]        VARCHAR (10) NOT NULL,
    [UserId]                VARCHAR (10) NOT NULL,
    [AuthTokenLockedDate]   DATETIME     NOT NULL,
    [AuthTokenUnLockedDate] DATETIME     NULL,
    [UnlockBy]              VARCHAR (30) NULL,
    CONSTRAINT [PK_AuthTokenLockLog] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AuthTokenLockLog_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_AuthTokenLockLog_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

