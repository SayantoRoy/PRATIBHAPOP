CREATE TABLE [dbo].[ResultGradeInfo] (
    [SystemID]    VARCHAR (30)  NOT NULL,
    [GradeShort]  VARCHAR (50)  NULL,
    [GradeFull]   VARCHAR (200) NULL,
    [ClassType]   VARCHAR (20)  NULL,
    [SequenceNo]  INT           NULL,
    [IsActive]    BIT           NOT NULL,
    [GroupID]     VARCHAR (30)  NULL,
    [AddedBy]     VARCHAR (100) NULL,
    [DateAdded]   DATETIME      NULL,
    [UpdatedBy]   VARCHAR (100) NULL,
    [DateUpdated] DATETIME      NULL,
    CONSTRAINT [PK_ResultGradeInfo] PRIMARY KEY CLUSTERED ([SystemID] ASC)
);

