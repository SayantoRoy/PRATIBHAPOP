CREATE TABLE [dbo].[JobLocation] (
    [SystemID]    VARCHAR (30)  NOT NULL,
    [JobLocation] VARCHAR (30)  NULL,
    [GroupID]     VARCHAR (10)  NULL,
    [PlantID]     VARCHAR (10)  NULL,
    [AddedBy]     VARCHAR (100) NULL,
    [DateAdded]   DATETIME      NULL,
    [UpdatedBy]   VARCHAR (100) NULL,
    [DateUpdated] DATETIME      NULL,
    CONSTRAINT [PK_JobLocation] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_JobLocation_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_JobLocation_JobLocation] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

