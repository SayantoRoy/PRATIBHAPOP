CREATE TABLE [TRN].[CheckLotDetailHistory] (
    [Id]               VARCHAR (10)  NOT NULL,
    [CheckLotDetailId] INT           NULL,
    [ResonForCash]     VARCHAR (250) NULL,
    [PrintDate]        DATETIME      NULL,
    [PrintBy]          VARCHAR (80)  NULL,
    [CheckDate]        DATETIME      NULL,
    [AddedBy]          VARCHAR (30)  NOT NULL,
    [AddedDate]        DATETIME      NOT NULL,
    [AddedFromIP]      VARCHAR (15)  NOT NULL,
    [UpdatedBy]        VARCHAR (30)  NULL,
    [UpdatedDate]      DATETIME      NULL,
    [UpdatedFromIP]    VARCHAR (15)  NULL,
    [VoucherDetailId]  VARCHAR (80)  NULL,
    [CheckStatus]      VARCHAR (25)  NULL,
    [PrintStatus]      VARCHAR (25)  NULL,
    [PartyAccount]     VARCHAR (100) NULL,
    CONSTRAINT [PK_CheckLotDetailHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CheckLotDetailHistory_CheckLotDetail] FOREIGN KEY ([CheckLotDetailId]) REFERENCES [TRN].[CheckLotDetail] ([Id]),
    CONSTRAINT [FK_CheckLotDetailHistory_VoucherDetail] FOREIGN KEY ([VoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id])
);

