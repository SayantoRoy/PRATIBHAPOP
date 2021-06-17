CREATE TABLE [SEC].[UserProcess] (
    [Id]            VARCHAR (10) NOT NULL,
    [UserId]        VARCHAR (10) NOT NULL,
    [ProcessId]     VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_UserProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserProcess_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_UserProcess_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

