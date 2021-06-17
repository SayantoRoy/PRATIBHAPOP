CREATE TABLE [dbo].[UserFavoriteMaster] (
    [UserId]           VARCHAR (100) NOT NULL,
    [ShowFavoriteMenu] BIT           NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

