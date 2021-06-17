CREATE TABLE [SCS].[ProcessUoM] (
    [Id]                  VARCHAR (10) NOT NULL,
    [CompanyGroupId]      VARCHAR (10) NOT NULL,
    [ProcessId]           VARCHAR (10) NOT NULL,
    [BaseUoMId]           VARCHAR (10) NOT NULL,
    [CapacityName]        VARCHAR (15) NOT NULL,
    [CapacityFirstUoMId]  VARCHAR (10) NOT NULL,
    [CapacitySecondUoMId] VARCHAR (10) NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    CONSTRAINT [PK_ProcessUoM] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProcessUoM_BaseUoM] FOREIGN KEY ([BaseUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_ProcessUoM_CapacityFirstUoM] FOREIGN KEY ([CapacityFirstUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_ProcessUoM_CapacitySecondUoM] FOREIGN KEY ([CapacitySecondUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_ProcessUoM_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ProcessUoM_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id])
);

