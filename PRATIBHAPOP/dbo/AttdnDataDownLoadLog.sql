CREATE TABLE [dbo].[AttdnDataDownLoadLog] (
    [Id]              VARCHAR (10)  NOT NULL,
    [RowId]           INT           IDENTITY (1, 1) NOT NULL,
    [DevSystemId]     VARCHAR (10)  NOT NULL,
    [PDate]           DATETIME      NOT NULL,
    [PTime]           DATETIME      NULL,
    [DownLoadRemarks] VARCHAR (250) NULL,
    [PlantId]         VARCHAR (10)  NULL,
    [AddedBy]         VARCHAR (100) NULL,
    [DateAdded]       DATETIME      NULL,
    [UpdatedBy]       VARCHAR (100) NULL,
    [DateUpdated]     DATETIME      NULL,
    CONSTRAINT [PK_AttdnDataDownLoadLog] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AttdnDataDownLoadLog_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

