CREATE TABLE [dbo].[VoucherChild] (
    [Id]              VARCHAR (20) NOT NULL,
    [VoucherMasterId] VARCHAR (20) NOT NULL,
    [FarmerMasterId]  VARCHAR (20) NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_VoucherChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_VoucherChild_FarmerMaster] FOREIGN KEY ([FarmerMasterId]) REFERENCES [MST].[FarmerMaster] ([Id]),
    CONSTRAINT [FK_VoucherChild_VoucherMaster] FOREIGN KEY ([VoucherMasterId]) REFERENCES [dbo].[Voucher] ([Id])
);

