CREATE TABLE [dbo].[ShiftRosterChild] (
    [SystemID]          VARCHAR (30)  NOT NULL,
    [GroupID]           VARCHAR (10)  NULL,
    [PlantID]           VARCHAR (10)  NULL,
    [SRMasterSystemID]  VARCHAR (30)  NOT NULL,
    [ShiftDefinationID] VARCHAR (30)  NOT NULL,
    [ShiftSequence]     INT           NULL,
    [AddedBy]           VARCHAR (100) NOT NULL,
    [DateAdded]         DATETIME      NOT NULL,
    [UpdatedBy]         VARCHAR (100) NULL,
    [DateUpdated]       DATETIME      NULL,
    CONSTRAINT [PK_ShiftRosterChild] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_ShiftRosterChild_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ShiftRosterChild_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_ShiftRosterChild_ShiftDefination] FOREIGN KEY ([ShiftDefinationID]) REFERENCES [dbo].[ShiftDefination] ([SystemID]),
    CONSTRAINT [FK_ShiftRosterChild_ShiftRosterMaster] FOREIGN KEY ([SRMasterSystemID]) REFERENCES [dbo].[ShiftRosterMaster] ([SystemID])
);

