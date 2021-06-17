CREATE TABLE [dbo].[NotificationURL] (
    [SystemId]       INT           IDENTITY (1, 1) NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NULL,
    [URL]            VARCHAR (512) NULL,
    CONSTRAINT [PK_NotificationURL] PRIMARY KEY CLUSTERED ([SystemId] ASC),
    CONSTRAINT [FK_NotificationURL_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

