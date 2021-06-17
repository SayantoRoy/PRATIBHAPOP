CREATE TABLE [dbo].[AttdnRawDataBackup] (
    [Id]             VARCHAR (50)  NOT NULL,
    [RowID]          INT           IDENTITY (1, 1) NOT NULL,
    [DeviceID]       INT           NULL,
    [DevSystemID]    VARCHAR (30)  NULL,
    [LogDownLoadNum] VARCHAR (50)  NOT NULL,
    [PDate]          DATETIME      NOT NULL,
    [PTime]          DATETIME      NULL,
    [PType]          VARCHAR (3)   NULL,
    [ProcessedFlag]  BIT           CONSTRAINT [DF_AttdnRawDataBackup_ProcessedFlag] DEFAULT ((0)) NOT NULL,
    [GroupID]        VARCHAR (10)  NULL,
    [PlantID]        VARCHAR (10)  NULL,
    [AddedBy]        VARCHAR (100) NULL,
    [DateAdded]      DATETIME      NULL,
    [UpdatedBy]      VARCHAR (100) NULL,
    [DateUpdated]    DATETIME      NULL,
    [BackupType]     VARCHAR (30)  NULL,
    CONSTRAINT [PK_AttdnRawDataBackup_1] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AttdnRawDataBackup_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_AttdnRawDataBackup_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

