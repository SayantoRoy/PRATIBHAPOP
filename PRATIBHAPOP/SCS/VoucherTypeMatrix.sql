CREATE TABLE [SCS].[VoucherTypeMatrix] (
    [Id]             VARCHAR (10) NOT NULL,
    [VoucherTypeId]  VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    [SourceType]     VARCHAR (30) NULL,
    CONSTRAINT [PK_VoucherTypeMatrix] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_VoucherTypeMatrix_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_VoucherTypeMatrix_VoucherType] FOREIGN KEY ([VoucherTypeId]) REFERENCES [SCS].[VoucherType] ([Id])
);

