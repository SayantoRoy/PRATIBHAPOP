CREATE TABLE [ORG].[EntityAllowance] (
    [Id]                 VARCHAR (10)    NOT NULL,
    [CompanyGroupId]     VARCHAR (10)    NOT NULL,
    [CompanyId]          VARCHAR (10)    NULL,
    [EntityId]           VARCHAR (10)    NOT NULL,
    [DesignationGroupId] VARCHAR (10)    NOT NULL,
    [CurrencyId]         VARCHAR (10)    NOT NULL,
    [Allowance]          DECIMAL (18, 4) NOT NULL,
    [EffectiveDate]      DATETIME        NOT NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    CONSTRAINT [PK_EntityAllowance] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EntityAllowance_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_EntityAllowance_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_EntityAllowance_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_EntityAllowance_DesignationGroup] FOREIGN KEY ([DesignationGroupId]) REFERENCES [HKP].[DesignationGroup] ([Id]),
    CONSTRAINT [FK_EntityAllowance_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id])
);

