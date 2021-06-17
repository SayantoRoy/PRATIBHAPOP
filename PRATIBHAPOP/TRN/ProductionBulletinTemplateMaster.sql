CREATE TABLE [TRN].[ProductionBulletinTemplateMaster] (
    [Id]                           VARCHAR (10)    NOT NULL,
    [ProductionBulletinTemplateId] VARCHAR (10)    NOT NULL,
    [ProcessId]                    VARCHAR (10)    NOT NULL,
    [RequiredStdTarget]            DECIMAL (18, 4) NULL,
    [PlannedHoursPerDay]           DECIMAL (18, 4) NULL,
    [MaxNoOfWS]                    DECIMAL (18, 4) NULL,
    [AddedBy]                      VARCHAR (30)    NOT NULL,
    [AddedDate]                    DATETIME        NOT NULL,
    [AddedFromIP]                  VARCHAR (15)    NOT NULL,
    [UpdatedBy]                    VARCHAR (30)    NULL,
    [UpdatedDate]                  DATETIME        NULL,
    [UpdatedFromIP]                VARCHAR (15)    NULL,
    CONSTRAINT [PK_ProductionBulletinTemplateMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductionBulletinTemplateMaster_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_ProductionBulletinTemplateMaster_ProductionBulletinTemplate] FOREIGN KEY ([ProductionBulletinTemplateId]) REFERENCES [TRN].[ProductionBulletinTemplate] ([Id])
);

