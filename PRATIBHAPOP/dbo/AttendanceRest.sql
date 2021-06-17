CREATE TABLE [dbo].[AttendanceRest] (
    [Id]                 VARCHAR (50)  NOT NULL,
    [AttendanceRestDate] DATETIME      NULL,
    [Remarks]            VARCHAR (250) NULL,
    [AddedBy]            VARCHAR (30)  NOT NULL,
    [AddedDate]          DATETIME      NOT NULL,
    [AddedFromIP]        VARCHAR (15)  NOT NULL,
    [UpdatedBy]          VARCHAR (30)  NULL,
    [UpdatedDate]        DATETIME      NULL,
    [UpdatedFromIP]      VARCHAR (15)  NULL,
    [RestTypeId]         VARCHAR (20)  NULL,
    CONSTRAINT [PK_AttendanceRest] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AttendanceRest_RestType] FOREIGN KEY ([RestTypeId]) REFERENCES [HKP].[RestType] ([Id]),
    CONSTRAINT [FK_AttendanceRest_Skill] FOREIGN KEY ([RestTypeId]) REFERENCES [HKP].[RestType] ([Id])
);

