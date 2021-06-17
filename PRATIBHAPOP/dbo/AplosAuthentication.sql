CREATE TABLE [dbo].[AplosAuthentication] (
    [Id]            VARCHAR (30)    NOT NULL,
    [URL]           NVARCHAR (1024) NULL,
    [AddedBy]       VARCHAR (30)    NULL,
    [AddedDate]     DATETIME        NULL,
    [AddedFromIP]   VARCHAR (15)    NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_AplosAuthentication] PRIMARY KEY CLUSTERED ([Id] ASC)
);

