CREATE TABLE [MMS].[MenuAction] (
    [Id]           VARCHAR (50)  NOT NULL,
    [MenuMasterId] VARCHAR (20)  NULL,
    [Action]       VARCHAR (80)  NOT NULL,
    [UserName]     VARCHAR (80)  NOT NULL,
    [Description]  VARCHAR (250) NULL,
    CONSTRAINT [PK_MenuAction] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MenuAction_MenuMaster] FOREIGN KEY ([MenuMasterId]) REFERENCES [MST].[MenuMaster] ([Id])
);

