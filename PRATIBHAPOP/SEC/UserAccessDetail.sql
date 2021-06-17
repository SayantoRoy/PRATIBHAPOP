CREATE TABLE [SEC].[UserAccessDetail] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [CompanyId]    VARCHAR (10) NULL,
    [UserId]       VARCHAR (10) NOT NULL,
    [RoleId]       VARCHAR (10) NULL,
    [UserAccessId] VARCHAR (50) NULL,
    [MenuMasterId] VARCHAR (20) NOT NULL,
    [MenuActionId] VARCHAR (50) NOT NULL,
    [Active]       BIT          NULL,
    CONSTRAINT [PK_UserAccessDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserAccessDetail_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_UserAccessDetail_MenuAction] FOREIGN KEY ([MenuActionId]) REFERENCES [MMS].[MenuAction] ([Id]),
    CONSTRAINT [FK_UserAccessDetail_MenuMaster] FOREIGN KEY ([MenuMasterId]) REFERENCES [MST].[MenuMaster] ([Id]),
    CONSTRAINT [FK_UserAccessDetail_Role] FOREIGN KEY ([RoleId]) REFERENCES [SEC].[Role] ([Id]),
    CONSTRAINT [FK_UserAccessDetail_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id]),
    CONSTRAINT [FK_UserAccessDetail_UserAccess] FOREIGN KEY ([UserAccessId]) REFERENCES [SEC].[UserAccess] ([Id])
);

