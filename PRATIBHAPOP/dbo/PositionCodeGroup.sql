CREATE TABLE [dbo].[PositionCodeGroup] (
    [SystemID]              VARCHAR (30)  NOT NULL,
    [PositionCodeGroupName] VARCHAR (50)  NULL,
    [Description]           VARCHAR (200) NULL,
    [AddedBy]               VARCHAR (100) NOT NULL,
    [DateAdded]             DATETIME      NOT NULL,
    [UpdatedBy]             VARCHAR (100) NULL,
    [DateUpdated]           DATETIME      NULL,
    CONSTRAINT [PK_PositionCodeGroup] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90)
);

