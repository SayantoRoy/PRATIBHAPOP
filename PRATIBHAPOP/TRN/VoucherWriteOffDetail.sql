CREATE TABLE [TRN].[VoucherWriteOffDetail] (
    [Id]                VARCHAR (30)     NOT NULL,
    [VoucherWriteOffId] VARCHAR (20)     NOT NULL,
    [VoucherDetailId]   VARCHAR (80)     NULL,
    [PartyId]           VARCHAR (10)     NULL,
    [PartyPlantId]      VARCHAR (12)     NULL,
    [PartyType]         VARCHAR (10)     NULL,
    [Amount]            DECIMAL (18, 4)  NOT NULL,
    [WrittenOffAmount]  DECIMAL (18, 10) NOT NULL,
    [IsWrittenOff]      BIT              NOT NULL,
    [AddedBy]           VARCHAR (30)     NOT NULL,
    [AddedDate]         DATETIME         NOT NULL,
    [AddedFromIP]       VARCHAR (15)     NOT NULL,
    [UpdatedBy]         VARCHAR (30)     NULL,
    [UpdatedDate]       DATETIME         NULL,
    [UpdatedFromIP]     VARCHAR (15)     NULL,
    CONSTRAINT [PK_VoucherWriteOffDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_VoucherWriteOffDetail_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_VoucherWriteOffDetail_PartyPlant] FOREIGN KEY ([PartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_VoucherWriteOffDetail_VoucherDetail] FOREIGN KEY ([VoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id]),
    CONSTRAINT [FK_VoucherWriteOffDetail_VoucherWriteOff] FOREIGN KEY ([VoucherWriteOffId]) REFERENCES [TRN].[VoucherWriteOff] ([Id])
);

