CREATE TABLE [SEC].[UserSection] (
    [Id]            VARCHAR (10) NOT NULL,
    [UserId]        VARCHAR (10) NOT NULL,
    [SectionId]     VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_UserSection] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserSection_Section] FOREIGN KEY ([SectionId]) REFERENCES [ORG].[Section] ([Id]),
    CONSTRAINT [FK_UserSection_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

