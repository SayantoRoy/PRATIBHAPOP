﻿CREATE TABLE [dbo].[PurchaseLCVersion] (
    [Id]                         VARCHAR (10)    NOT NULL,
    [PurchaseLCId]               VARCHAR (10)    NULL,
    [Version]                    DECIMAL (18, 2) NULL,
    [ContractId]                 VARCHAR (10)    NULL,
    [VendorId]                   VARCHAR (10)    NULL,
    [BenificiaryBank]            VARCHAR (50)    NULL,
    [OpeningBankMasterId]        VARCHAR (10)    NULL,
    [BenificiaryBankDescription] VARCHAR (250)   NULL,
    [LeinBank]                   VARCHAR (50)    NULL,
    [LeinBankDescription]        VARCHAR (250)   NULL,
    [OrderSpecific]              VARCHAR (10)    NULL,
    [LCRef]                      VARCHAR (50)    NULL,
    [LCDate]                     DATETIME        NULL,
    [AmendmentDate]              DATETIME        NULL,
    [ExpiryDate]                 DATETIME        NULL,
    [Amount]                     DECIMAL (18, 2) NULL,
    [Type]                       VARCHAR (20)    NULL,
    [Tenure]                     INT             NULL,
    [CurrencyId]                 VARCHAR (10)    NULL,
    [Rate]                       DECIMAL (18, 2) NULL,
    [FinalDestination]           VARCHAR (50)    NULL,
    [PortOfLandingId]            VARCHAR (10)    NULL,
    [Status]                     VARCHAR (50)    NULL,
    [AddedBy]                    VARCHAR (30)    NOT NULL,
    [AddedDate]                  DATETIME        NOT NULL,
    [AddedFromIP]                VARCHAR (15)    NOT NULL,
    [UpdatedBy]                  VARCHAR (30)    NULL,
    [UpdatedDate]                DATETIME        NULL,
    [UpdatedFromIP]              VARCHAR (15)    NULL,
    [LCANo]                      VARCHAR (20)    NULL,
    [LIBOUR]                     DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [InsuranceCoverNoteNo]       VARCHAR (50)    NULL,
    [InsuranceAttachment]        VARCHAR (100)   NULL,
    [PaymentBasedOn]             VARCHAR (15)    NULL,
    [InsuranceValue]             VARCHAR (50)    NULL,
    [IsAccepptanceFirst]         BIT             NULL,
    [PlantId]                    VARCHAR (10)    NULL,
    [PortOfLoading]              VARCHAR (50)    NULL,
    [ShipmentDate]               DATETIME        NULL,
    [PINo]                       VARCHAR (50)    NULL,
    CONSTRAINT [PK_PurchaseLCVersion] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PurchaseLCVersion_BankMaster] FOREIGN KEY ([OpeningBankMasterId]) REFERENCES [MST].[BankMaster] ([Id]),
    CONSTRAINT [FK_PurchaseLCVersion_Contract] FOREIGN KEY ([ContractId]) REFERENCES [dbo].[Contract] ([Id]),
    CONSTRAINT [FK_PurchaseLCVersion_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_PurchaseLCVersion_Party] FOREIGN KEY ([VendorId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_PurchaseLCVersion_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_PurchaseLCVersion_Port] FOREIGN KEY ([PortOfLandingId]) REFERENCES [MST].[Port] ([Id]),
    CONSTRAINT [FK_PurchaseLCVersion_PurchaseLC] FOREIGN KEY ([PurchaseLCId]) REFERENCES [dbo].[PurchaseLC] ([Id])
);

