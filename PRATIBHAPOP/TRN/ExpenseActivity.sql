﻿CREATE TABLE [TRN].[ExpenseActivity] (
    [Id]                     VARCHAR (20)    NOT NULL,
    [ExpenseBookingId]       VARCHAR (100)   NOT NULL,
    [ExpenseBookingDetailId] VARCHAR (150)   NOT NULL,
    [FixedAssetRegisterId]   VARCHAR (30)    NULL,
    [GLGeneralInfoId]        VARCHAR (10)    NOT NULL,
    [BudgetMasterId]         VARCHAR (20)    NULL,
    [ActivityId]             VARCHAR (10)    NULL,
    [ActivityType]           VARCHAR (25)    NOT NULL,
    [Kilometer]              DECIMAL (18, 4) NULL,
    [FuelType]               VARCHAR (10)    NULL,
    [QtyInLiter]             DECIMAL (18, 4) NULL,
    [BillNo]                 VARCHAR (50)    NULL,
    [From]                   VARCHAR (250)   NULL,
    [To]                     VARCHAR (250)   NULL,
    [ConvenyenceDate]        DATETIME        NULL,
    [TransportType]          VARCHAR (25)    NULL,
    [Amount]                 DECIMAL (18, 4) NULL,
    [AddedBy]                VARCHAR (30)    NOT NULL,
    [AddedDate]              DATETIME        NOT NULL,
    [AddedFromIP]            VARCHAR (15)    NOT NULL,
    [UpdatedBy]              VARCHAR (30)    NULL,
    [UpdatedDate]            DATETIME        NULL,
    [UpdatedFromIP]          VARCHAR (15)    NULL,
    [Remarks]                VARCHAR (250)   NULL,
    CONSTRAINT [PK_ExpenseActivity] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ExpenseActivity_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_ExpenseActivity_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_ExpenseActivity_ExpenseBooking] FOREIGN KEY ([ExpenseBookingId]) REFERENCES [TRN].[ExpenseBooking] ([Id]),
    CONSTRAINT [FK_ExpenseActivity_ExpenseBookingDetail] FOREIGN KEY ([ExpenseBookingDetailId]) REFERENCES [TRN].[ExpenseBookingDetail] ([Id]),
    CONSTRAINT [FK_ExpenseActivity_FixedAssetRegister] FOREIGN KEY ([FixedAssetRegisterId]) REFERENCES [TRN].[FixedAssetRegister] ([Id]),
    CONSTRAINT [FK_ExpenseActivity_GLGeneralInfo] FOREIGN KEY ([GLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id])
);
