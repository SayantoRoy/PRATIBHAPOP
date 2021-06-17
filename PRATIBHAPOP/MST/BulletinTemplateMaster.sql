CREATE TABLE [MST].[BulletinTemplateMaster] (
    [Id]                 VARCHAR (10)    NOT NULL,
    [BulletinTemplateId] VARCHAR (10)    NOT NULL,
    [ProcessId]          VARCHAR (10)    NOT NULL,
    [RequiredStdTarget]  DECIMAL (18, 4) NULL,
    [MaxNoOfWS]          DECIMAL (18, 4) NULL,
    [PlannedHoursPerDay] DECIMAL (18, 4) CONSTRAINT [DF__BulletinT__Plann__2219256C] DEFAULT ((0)) NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    CONSTRAINT [PK_BulletinTemplateMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BulletinTemplateMaster_BulletinTemplate] FOREIGN KEY ([BulletinTemplateId]) REFERENCES [MST].[BulletinTemplate] ([Id]),
    CONSTRAINT [FK_BulletinTemplateMaster_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id])
);

