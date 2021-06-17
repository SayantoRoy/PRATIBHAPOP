CREATE TABLE [SEC].[ControlAdmin] (
    [UserId]   VARCHAR (30)  NOT NULL,
    [FullName] VARCHAR (30)  NOT NULL,
    [Password] VARCHAR (100) NOT NULL,
    [Email]    VARCHAR (80)  NULL,
    [Archive]  BIT           CONSTRAINT [DF_ControlAdmin_ARCHIVE] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_ControlAdmin] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

