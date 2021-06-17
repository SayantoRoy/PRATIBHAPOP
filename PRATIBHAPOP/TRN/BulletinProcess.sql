CREATE TABLE [TRN].[BulletinProcess] (
    [Id]            VARCHAR (10) NOT NULL,
    [BulletinId]    VARCHAR (30) NOT NULL,
    [ProcessId]     VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_BulletinProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BulletinProcess_BulletinMaster] FOREIGN KEY ([BulletinId]) REFERENCES [TRN].[BulletinMaster] ([Id]),
    CONSTRAINT [FK_BulletinProcess_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id])
);

