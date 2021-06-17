CREATE TABLE [SEC].[UserAccess] (
    [Id]             VARCHAR (50) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [CompanyId]      VARCHAR (10) NOT NULL,
    [UserId]         VARCHAR (10) NOT NULL,
    [RoleId]         VARCHAR (10) NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_UserAccess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserAccess_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_UserAccess_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_UserAccess_Role] FOREIGN KEY ([RoleId]) REFERENCES [SEC].[Role] ([Id]),
    CONSTRAINT [FK_UserAccess_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

