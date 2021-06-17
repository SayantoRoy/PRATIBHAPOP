CREATE TABLE [dbo].[ShiftTimeChgChild] (
    [SystemID]          VARCHAR (30)  NOT NULL,
    [GroupID]           VARCHAR (10)  NULL,
    [PlantID]           VARCHAR (10)  NULL,
    [STCMasterSystemID] VARCHAR (30)  NOT NULL,
    [ShiftDate]         DATETIME      NULL,
    [DayName]           VARCHAR (12)  NULL,
    [IsLock]            VARCHAR (3)   NULL,
    [AddedBy]           VARCHAR (100) NOT NULL,
    [DateAdded]         DATETIME      NOT NULL,
    [UpdatedBy]         VARCHAR (100) NULL,
    [DateUpdated]       DATETIME      NULL,
    CONSTRAINT [PK_ShiftTimeChgChild] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_ShiftTimeChgChild_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ShiftTimeChgChild_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_ShiftTimeChgChild_ShiftTimeChgMaster] FOREIGN KEY ([STCMasterSystemID]) REFERENCES [dbo].[ShiftTimeChgMaster] ([SystemID])
);

