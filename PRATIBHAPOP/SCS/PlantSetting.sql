CREATE TABLE [SCS].[PlantSetting] (
    [Id]                  VARCHAR (10)    NOT NULL,
    [Sequence]            DECIMAL (18, 2) NULL,
    [ModuleId]            VARCHAR (20)    NULL,
    [PlantId]             VARCHAR (10)    NULL,
    [ModuleName]          VARCHAR (50)    NULL,
    [AuthorizedSignature] VARCHAR (50)    NULL,
    [AddedBy]             VARCHAR (30)    NOT NULL,
    [AddedDate]           DATETIME        NOT NULL,
    [AddedFromIP]         VARCHAR (15)    NOT NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    [Active]              BIT             DEFAULT ((1)) NULL,
    CONSTRAINT [PK_PlantSetting] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PlantSetting_Module] FOREIGN KEY ([ModuleId]) REFERENCES [MMS].[Module] ([Id]),
    CONSTRAINT [FK_PlantSetting_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

