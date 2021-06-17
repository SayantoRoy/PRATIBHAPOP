CREATE TABLE [SEC].[PasswordHistory] (
    [Id]             VARCHAR (36)  NOT NULL,
    [UserId]         VARCHAR (10)  NOT NULL,
    [Password]       VARCHAR (100) NOT NULL,
    [LastChangedDay] DATETIME      NOT NULL,
    CONSTRAINT [PK_PasswordHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PasswordHistory_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

