CREATE TABLE [HKP].[SOPActivityKPI] (
    [Id]                VARCHAR (10)    NOT NULL,
    [SOPActivityId]     VARCHAR (10)    NOT NULL,
    [Name]              VARCHAR (200)   NULL,
    [KPIDetail]         VARCHAR (200)   NULL,
    [Remarks]           VARCHAR (200)   NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    [CalculationMethod] VARCHAR (200)   NULL,
    [DirectOwner]       VARCHAR (200)   NULL,
    [IndirectOwner]     VARCHAR (200)   NULL,
    [Source]            VARCHAR (100)   NULL,
    [Frequency]         VARCHAR (50)    NULL,
    [Baseline]          DECIMAL (18, 2) NULL,
    [Entitlement]       VARCHAR (50)    NULL,
    CONSTRAINT [PK_SOPActivityKPI] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SOPActivityKPI_SOPActivity] FOREIGN KEY ([SOPActivityId]) REFERENCES [HKP].[SOPActivity] ([Id])
);

