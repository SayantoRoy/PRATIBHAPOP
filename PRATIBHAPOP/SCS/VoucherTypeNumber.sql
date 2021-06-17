CREATE TABLE [SCS].[VoucherTypeNumber] (
    [Id]                  INT          IDENTITY (1, 1) NOT NULL,
    [VoucherTypeConfigId] VARCHAR (10) NOT NULL,
    [RegisterName]        VARCHAR (30) NOT NULL,
    [Period]              VARCHAR (30) NOT NULL,
    [MaxNumber]           BIGINT       NOT NULL,
    [UpdatedDate]         DATETIME     NOT NULL,
    CONSTRAINT [PK_VoucherTypeNumber] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_VoucherTypeNumber_VoucherTypeConfig] FOREIGN KEY ([VoucherTypeConfigId]) REFERENCES [SCS].[VoucherTypeConfig] ([Id])
);

