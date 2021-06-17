﻿CREATE TABLE [TRN].[VoucherWriteOff] (
    [Id]               VARCHAR (20)     NOT NULL,
    [CompanyGroupId]   VARCHAR (10)     NOT NULL,
    [CompanyId]        VARCHAR (10)     NOT NULL,
    [PlantId]          VARCHAR (10)     NOT NULL,
    [EntityId]         VARCHAR (10)     NULL,
    [VoucherDetailId]  VARCHAR (80)     NULL,
    [CurrencyId]       VARCHAR (10)     NULL,
    [PaymentSource]    VARCHAR (20)     NULL,
    [SourceType]       VARCHAR (30)     NULL,
    [PostingDate]      DATETIME         NOT NULL,
    [DocDate]          DATETIME         NOT NULL,
    [DocRefNo]         VARCHAR (50)     NOT NULL,
    [Narration]        VARCHAR (250)    NULL,
    [Amount]           DECIMAL (18, 4)  NOT NULL,
    [Archive]          BIT              NOT NULL,
    [IsPark]           BIT              NOT NULL,
    [AddedBy]          VARCHAR (30)     NOT NULL,
    [AddedDate]        DATETIME         NOT NULL,
    [AddedFromIP]      VARCHAR (15)     NOT NULL,
    [UpdatedBy]        VARCHAR (30)     NULL,
    [UpdatedDate]      DATETIME         NULL,
    [UpdatedFromIP]    VARCHAR (15)     NULL,
    [PartyType]        VARCHAR (10)     NULL,
    [PartyId]          VARCHAR (10)     NULL,
    [PartyPlantId]     VARCHAR (12)     NULL,
    [IsWrittenOff]     BIT              NOT NULL,
    [WrittenOffAmount] DECIMAL (18, 10) NOT NULL,
    CONSTRAINT [PK_VoucherWriteOff] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_VoucherWriteOff_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_VoucherWriteOff_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_VoucherWriteOff_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_VoucherWriteOff_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_VoucherWriteOff_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_VoucherWriteOff_PartyPlant] FOREIGN KEY ([PartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_VoucherWriteOff_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_VoucherWriteOff_VoucherDetail] FOREIGN KEY ([VoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id])
);

