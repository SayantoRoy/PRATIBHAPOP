CREATE TABLE [TRN].[InvoiceTaxDetail] (
    [Id]               VARCHAR (80)     NOT NULL,
    [InvoiceTaxId]     VARCHAR (50)     NOT NULL,
    [GLGeneralInfoId]  VARCHAR (10)     NOT NULL,
    [BudgetMasterId]   VARCHAR (20)     NULL,
    [ActivityId]       VARCHAR (10)     NULL,
    [AType]            VARCHAR (5)      NOT NULL,
    [Amount]           DECIMAL (18, 10) NOT NULL,
    [WrittenOffAmount] DECIMAL (18, 10) CONSTRAINT [DF__InvoiceTa__Writt__5F89E5FB] DEFAULT ((0)) NOT NULL,
    [IsWrittenOff]     BIT              CONSTRAINT [DF__InvoiceTa__IsWri__607E0A34] DEFAULT ((0)) NOT NULL,
    [Archive]          BIT              NOT NULL,
    [AddedBy]          VARCHAR (30)     NOT NULL,
    [AddedDate]        DATETIME         NOT NULL,
    [AddedFromIP]      VARCHAR (15)     NOT NULL,
    [UpdatedBy]        VARCHAR (30)     NULL,
    [UpdatedDate]      DATETIME         NULL,
    [UpdatedFromIP]    VARCHAR (15)     NULL,
    CONSTRAINT [PK_InvoiceTaxDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceTaxDetail_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_InvoiceTaxDetail_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_InvoiceTaxDetail_GLGeneralInfo] FOREIGN KEY ([GLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_InvoiceTaxDetail_InvoiceTax] FOREIGN KEY ([InvoiceTaxId]) REFERENCES [TRN].[InvoiceTax] ([Id])
);

