CREATE TABLE [dbo].[CentralPayRollGroup] (
    [SystemID]               VARCHAR (30)  NOT NULL,
    [GroupID]                VARCHAR (10)  NULL,
    [CtlPrlGroupCode]        VARCHAR (50)  NULL,
    [CtlPrlGroupName]        VARCHAR (50)  NULL,
    [CtlPrlGroupDescription] VARCHAR (100) NULL,
    [AddedBy]                VARCHAR (100) NULL,
    [DateAdded]              DATETIME      NULL,
    [UpdatedBy]              VARCHAR (100) NULL,
    [DateUpdated]            DATETIME      NULL,
    CONSTRAINT [PK_CentralPayRollGroup] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_CentralPayRollGroup_CentralPayRollGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

