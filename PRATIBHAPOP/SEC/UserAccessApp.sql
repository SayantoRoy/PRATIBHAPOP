CREATE TABLE [SEC].[UserAccessApp] (
    [Id]             VARCHAR (50) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [CompanyId]      VARCHAR (10) NOT NULL,
    [UserId]         VARCHAR (10) NOT NULL,
    [ModuleAppId]    VARCHAR (2)  NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_UserAccessApp] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserAccessApp_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_UserAccessApp_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_UserAccessApp_ModuleApp] FOREIGN KEY ([ModuleAppId]) REFERENCES [MMS].[ModuleApp] ([Id]),
    CONSTRAINT [FK_UserAccessApp_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

