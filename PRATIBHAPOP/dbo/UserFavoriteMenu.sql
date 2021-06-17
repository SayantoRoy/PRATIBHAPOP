CREATE TABLE [dbo].[UserFavoriteMenu] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [MenuMasterId] VARCHAR (20)   NULL,
    [UserId]       VARCHAR (100)  NULL,
    [MenuDesc]     NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([MenuMasterId]) REFERENCES [MST].[MenuMaster] ([Id])
);

