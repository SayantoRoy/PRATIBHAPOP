CREATE TABLE [dbo].[ManualAttdnFile] (
    [Id]            VARCHAR (30)  NOT NULL,
    [FileId]        VARCHAR (50)  NOT NULL,
    [FileName]      VARCHAR (250) NOT NULL,
    [FileStatus]    VARCHAR (10)  NOT NULL,
    [PlantId]       VARCHAR (10)  NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

