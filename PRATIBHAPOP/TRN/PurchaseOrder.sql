﻿CREATE TABLE [TRN].[PurchaseOrder] (
    [Id]                       VARCHAR (10)     NOT NULL,
    [CompanyGroupId]           VARCHAR (10)     NOT NULL,
    [CompanyId]                VARCHAR (10)     NOT NULL,
    [PlantId]                  VARCHAR (10)     NOT NULL,
    [MaterialStorageId]        VARCHAR (10)     NULL,
    [CurrencyId]               VARCHAR (10)     NOT NULL,
    [PartyId]                  VARCHAR (10)     NULL,
    [DocRefNo]                 VARCHAR (100)    NULL,
    [DocDate]                  DATE             NOT NULL,
    [FixedAssetOrInventory]    VARCHAR (10)     NOT NULL,
    [PODepended]               BIT              NOT NULL,
    [AddedBy]                  VARCHAR (30)     NOT NULL,
    [AddedDate]                DATETIME         NOT NULL,
    [AddedFromIP]              VARCHAR (15)     NOT NULL,
    [UpdatedBy]                VARCHAR (30)     NULL,
    [UpdatedDate]              DATETIME         NULL,
    [UpdatedFromIP]            VARCHAR (15)     NULL,
    [PaymentTermId]            VARCHAR (10)     NULL,
    [BaseOnDueDate]            DATETIME         NULL,
    [BaseNoOfDays]             INT              NOT NULL,
    [MatureDate]               DATETIME         NULL,
    [Status]                   VARCHAR (15)     NULL,
    [BaseCurrencyId]           VARCHAR (10)     NOT NULL,
    [InvoicingPartyPlantId]    VARCHAR (50)     NULL,
    [DeliveryPartyPlantId]     VARCHAR (12)     NULL,
    [EntityId]                 VARCHAR (10)     NULL,
    [PODate]                   DATE             NULL,
    [IsNonCreditable]          BIT              NOT NULL,
    [InvoicingByAddress]       VARCHAR (300)    NULL,
    [DeliveryByAddress]        VARCHAR (300)    NULL,
    [ToCurrencyRate]           DECIMAL (18, 10) NOT NULL,
    [IsTaxApplicable]          BIT              NOT NULL,
    [PartyType]                VARCHAR (10)     NULL,
    [EmployeeId]               VARCHAR (30)     NULL,
    [IsApproved]               BIT              NOT NULL,
    [IsPaymentHold]            BIT              NOT NULL,
    [IsClosed]                 BIT              NULL,
    [POType]                   VARCHAR (30)     NULL,
    [MasterOrderId]            VARCHAR (10)     NULL,
    [DeliveryInstruction]      VARCHAR (1000)   NULL,
    [SpecialInstruction]       VARCHAR (1000)   NULL,
    [CheckedBy]                VARCHAR (30)     NULL,
    [AuthorizedBy]             VARCHAR (30)     NULL,
    [CheckedByStatus]          VARCHAR (30)     NULL,
    [AuthorizedByStatus]       VARCHAR (30)     NULL,
    [RequisitionId]            VARCHAR (10)     NULL,
    [ApprovedHoldRejectReason] VARCHAR (300)    NULL,
    [CheckedHoldRejectReason]  VARCHAR (300)    NULL,
    [FileName]                 VARCHAR (300)    NULL,
    [ToBeCheckedRetrieve]      BIT              NULL,
    [ToBeApporvedRetrieve]     BIT              NULL,
    [ContractId]               VARCHAR (10)     NULL,
    [PurchaseLCId]             VARCHAR (10)     NULL,
    [OrderSpecific]            VARCHAR (10)     NULL,
    [DiscountAmount]           DECIMAL (18, 2)  NULL,
    [Tolerance]                DECIMAL (18, 4)  NULL,
    CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_BaseCurrencyId] FOREIGN KEY ([BaseCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [fk_ChekdBy] FOREIGN KEY ([CheckedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [fk_CmpanyId] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [fk_CompanyGroupId] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [fk_CurrencyId] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [fk_EntityId] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [fk_MasterOrderId] FOREIGN KEY ([MasterOrderId]) REFERENCES [TRN].[MasterOrder] ([Id]),
    CONSTRAINT [fk_PartyId] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [fk_PlntId] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [PurchaseOrder_ContractId] FOREIGN KEY ([ContractId]) REFERENCES [dbo].[Contract] ([Id])
);

