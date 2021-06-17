CREATE TABLE [dbo].[Query] (
    [Id]             VARCHAR (100) NOT NULL,
    [RowID]          INT           NOT NULL,
    [DeviceID]       INT           NULL,
    [DevSystemID]    VARCHAR (30)  NULL,
    [LogDownLoadNum] VARCHAR (50)  NOT NULL,
    [PDate]          DATETIME2 (3) NOT NULL,
    [PTime]          DATETIME2 (3) NULL,
    [PType]          VARCHAR (3)   NULL,
    [ProcessedFlag]  BIT           NOT NULL,
    [GroupID]        VARCHAR (10)  NULL,
    [PlantID]        VARCHAR (10)  NULL,
    [AddedBy]        VARCHAR (100) NULL,
    [DateAdded]      DATETIME2 (3) NULL,
    [UpdatedBy]      VARCHAR (100) NULL,
    [DateUpdated]    DATETIME2 (3) NULL
);

