CREATE TABLE [TRN].[CleaningService] (
    [Id]                    VARCHAR (30)  NOT NULL,
    [CompanyGroupId]        VARCHAR (10)  NOT NULL,
    [CompanyId]             VARCHAR (10)  NOT NULL,
    [AddedBy]               VARCHAR (30)  NOT NULL,
    [AddedDate]             DATETIME      NOT NULL,
    [AddedFromIP]           VARCHAR (15)  NOT NULL,
    [UpdatedBy]             VARCHAR (30)  NULL,
    [UpdatedDate]           DATETIME      NULL,
    [UpdatedFromIP]         VARCHAR (15)  NULL,
    [PlantId]               VARCHAR (10)  NULL,
    [LocationCode]          VARCHAR (10)  NULL,
    [CleaningServiceTypeId] VARCHAR (10)  NOT NULL,
    [Remarks]               VARCHAR (250) NULL,
    [Image]                 VARCHAR (50)  NULL,
    [UserId]                VARCHAR (10)  NOT NULL,
    CONSTRAINT [PK_CleaningService] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CleaningService_CleaningServiceType] FOREIGN KEY ([CleaningServiceTypeId]) REFERENCES [HKP].[CleaningServiceType] ([Id]),
    CONSTRAINT [FK_CleaningService_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CleaningService_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CleaningService_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_CleaningService_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

