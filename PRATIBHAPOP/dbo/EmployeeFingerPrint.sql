CREATE TABLE [dbo].[EmployeeFingerPrint] (
    [Id]          VARCHAR (10)  NOT NULL,
    [Sequence]    DECIMAL (18)  NULL,
    [EmpSystemId] VARCHAR (30)  NOT NULL,
    [IsRightHand] VARCHAR (10)  NULL,
    [FingerName]  VARCHAR (30)  NULL,
    [FileName]    VARCHAR (50)  NULL,
    [AddedBy]     VARCHAR (100) NULL,
    [DateAdded]   DATETIME      NULL,
    CONSTRAINT [PK_EmployeeFingerPrint] PRIMARY KEY CLUSTERED ([Id] ASC)
);

