CREATE TABLE [dbo].[AttdnLock] (
    [LockDate] DATE         NOT NULL,
    [GroupID]  VARCHAR (10) NOT NULL,
    [PlantID]  VARCHAR (10) NOT NULL,
    CONSTRAINT [PK_AttdnLock] PRIMARY KEY CLUSTERED ([LockDate] ASC, [GroupID] ASC, [PlantID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_AttdnLock_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_AttdnLock_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

