CREATE TABLE [dbo].[VisitorLogJunk] (
    [Id]             VARCHAR (100) NOT NULL,
    [RowID]          INT           IDENTITY (1, 1) NOT NULL,
    [DeviceID]       INT           NULL,
    [DevSystemID]    VARCHAR (30)  NULL,
    [LogDownLoadNum] VARCHAR (50)  NOT NULL,
    [PDate]          DATETIME      NOT NULL,
    [PTime]          DATETIME      NULL,
    [PType]          VARCHAR (3)   NOT NULL,
    [ProcessedFlag]  BIT           CONSTRAINT [DF_VisitorLogJunk_ProcessedFlag] DEFAULT ((0)) NOT NULL,
    [GroupID]        VARCHAR (10)  NULL,
    [PlantID]        VARCHAR (10)  NULL,
    [AddedBy]        VARCHAR (100) NULL,
    [DateAdded]      DATETIME      NULL,
    [UpdatedBy]      VARCHAR (100) NULL,
    [DateUpdated]    DATETIME      NULL,
    CONSTRAINT [PK_VisitorLogJunk] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_VisitorLogJunk_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

