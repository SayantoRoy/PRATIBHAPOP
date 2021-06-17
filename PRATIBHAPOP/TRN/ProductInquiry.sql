﻿CREATE TABLE [TRN].[ProductInquiry] (
    [Id]                      VARCHAR (10)    NOT NULL,
    [EntityId]                VARCHAR (10)    NOT NULL,
    [InquiryId]               VARCHAR (10)    NOT NULL,
    [MaterialMasterId]        VARCHAR (30)    NOT NULL,
    [MaterialMasterArticleId] VARCHAR (10)    NULL,
    [BrandId]                 VARCHAR (10)    NULL,
    [Quantity]                INT             NOT NULL,
    [IsDevelopment]           BIT             NOT NULL,
    [IsPreCosting]            BIT             NOT NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    [TargetPrice]             DECIMAL (18, 4) NULL,
    [LSD]                     DATE            NOT NULL,
    [ShipmentDate]            DATETIME        NULL,
    CONSTRAINT [PK_ProductInquiry] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductInquiry_Brand] FOREIGN KEY ([BrandId]) REFERENCES [SCS].[Brand] ([Id]),
    CONSTRAINT [FK_ProductInquiry_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_ProductInquiry_Inquiry] FOREIGN KEY ([InquiryId]) REFERENCES [TRN].[Inquiry] ([Id]),
    CONSTRAINT [FK_ProductInquiry_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id])
);
