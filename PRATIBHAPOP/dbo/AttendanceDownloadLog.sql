CREATE TABLE [dbo].[AttendanceDownloadLog] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [PDate]       DATETIME      NOT NULL,
    [AddedBy]     VARCHAR (100) NULL,
    [DateAdded]   DATETIME      NULL,
    [UpdatedBy]   VARCHAR (100) NULL,
    [DateUpdated] DATETIME      NULL
);

