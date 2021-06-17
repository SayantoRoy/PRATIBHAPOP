CREATE TABLE [SEC].[RoleDetail] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [RoleId]       VARCHAR (10) NOT NULL,
    [MenuMasterId] VARCHAR (20) NOT NULL,
    [MenuActionId] VARCHAR (50) NOT NULL,
    [Active]       BIT          NOT NULL,
    CONSTRAINT [PK_RoleDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RoleDetail_MenuAction] FOREIGN KEY ([MenuActionId]) REFERENCES [MMS].[MenuAction] ([Id]),
    CONSTRAINT [FK_RoleDetail_MenuMaster] FOREIGN KEY ([MenuMasterId]) REFERENCES [MST].[MenuMaster] ([Id]),
    CONSTRAINT [FK_RoleDetail_Role] FOREIGN KEY ([RoleId]) REFERENCES [SEC].[Role] ([Id])
);

