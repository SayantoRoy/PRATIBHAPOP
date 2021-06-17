CREATE TABLE [dbo].[EducationLevelInfo] (
    [SystemID]    VARCHAR (10)  NOT NULL,
    [LevelShort]  VARCHAR (50)  NULL,
    [LevelFull]   VARCHAR (200) NULL,
    [SequenceNo]  INT           NULL,
    [IsActive]    BIT           NOT NULL,
    [GroupID]     VARCHAR (30)  NULL,
    [AddedBy]     VARCHAR (100) NULL,
    [DateAdded]   DATETIME      NULL,
    [UpdatedBy]   VARCHAR (100) NULL,
    [DateUpdated] DATETIME      NULL,
    CONSTRAINT [PK_EducationLevelInfo] PRIMARY KEY CLUSTERED ([SystemID] ASC)
);

