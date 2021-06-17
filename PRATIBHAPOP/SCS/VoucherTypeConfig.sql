CREATE TABLE [SCS].[VoucherTypeConfig] (
    [Id]                     VARCHAR (10) NOT NULL,
    [CompanyGroupId]         VARCHAR (10) NOT NULL,
    [CompanyId]              VARCHAR (10) NOT NULL,
    [PlantId]                VARCHAR (10) NOT NULL,
    [VoucherTypeId]          VARCHAR (10) NOT NULL,
    [Prefix]                 VARCHAR (10) NOT NULL,
    [Period]                 VARCHAR (30) NOT NULL,
    [PadLeftWidth]           TINYINT      NOT NULL,
    [PadLeftChar]            VARCHAR (1)  NOT NULL,
    [AddedBy]                VARCHAR (30) NOT NULL,
    [AddedDate]              DATETIME     NOT NULL,
    [AddedFromIP]            VARCHAR (15) NOT NULL,
    [UpdatedBy]              VARCHAR (30) NULL,
    [UpdatedDate]            DATETIME     NULL,
    [UpdatedFromIP]          VARCHAR (15) NULL,
    [IsBackDatePostingAllow] BIT          NOT NULL,
    CONSTRAINT [PK_VoucherTypeConfig] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_VoucherTypeConfig_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_VoucherTypeConfig_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_VoucherTypeConfig_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_VoucherTypeConfig_VoucherType] FOREIGN KEY ([VoucherTypeId]) REFERENCES [SCS].[VoucherType] ([Id])
);

