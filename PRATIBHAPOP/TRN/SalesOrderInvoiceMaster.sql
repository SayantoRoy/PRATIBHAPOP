﻿CREATE TABLE [TRN].[SalesOrderInvoiceMaster] (
    [Id]                  VARCHAR (30)    NOT NULL,
    [CompanyGroupId]      VARCHAR (10)    NOT NULL,
    [CompanyId]           VARCHAR (10)    NOT NULL,
    [PlantId]             VARCHAR (10)    NULL,
    [EntityId]            VARCHAR (10)    NULL,
    [SalesOrganizationId] VARCHAR (10)    NULL,
    [CustomerId]          VARCHAR (10)    NULL,
    [PaymentTermId]       VARCHAR (10)    NULL,
    [SalesGroupId]        VARCHAR (10)    NULL,
    [CurrencyId]          VARCHAR (10)    NULL,
    [SalesTypeId]         VARCHAR (10)    NULL,
    [InvoiceNo]           VARCHAR (50)    NULL,
    [InvoiceDate]         DATE            NULL,
    [InvoiceValue]        DECIMAL (18, 3) NULL,
    [ActualDueDate]       DATETIME        NULL,
    [RevisedDueDate]      DATETIME        NULL,
    [BaseOnDueDate]       DATETIME        NULL,
    [BaseNoOfDays]        INT             NULL,
    [AddedBy]             VARCHAR (30)    NOT NULL,
    [AddedDate]           DATETIME        NOT NULL,
    [AddedFromIP]         VARCHAR (15)    NOT NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    CONSTRAINT [PK_SalesOrderInvoiceMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalesOrderInvoiceMaster_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_SalesOrderInvoiceMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SalesOrderInvoiceMaster_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_SalesOrderInvoiceMaster_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_SalesOrderInvoiceMaster_Party] FOREIGN KEY ([CustomerId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_SalesOrderInvoiceMaster_PaymentTerm] FOREIGN KEY ([PaymentTermId]) REFERENCES [MST].[PaymentTerm] ([Id]),
    CONSTRAINT [FK_SalesOrderInvoiceMaster_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalesOrderInvoiceMaster_SalesGroup] FOREIGN KEY ([SalesGroupId]) REFERENCES [ORG].[SalesGroup] ([Id]),
    CONSTRAINT [FK_SalesOrderInvoiceMaster_SalesOrganisation] FOREIGN KEY ([SalesOrganizationId]) REFERENCES [ORG].[SalesOrganisation] ([Id]),
    CONSTRAINT [FK_SalesOrderInvoiceMaster_SalesType] FOREIGN KEY ([SalesTypeId]) REFERENCES [HKP].[SalesType] ([Id])
);

