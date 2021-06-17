CREATE TABLE [TRN].[SecurityDepositDetail] (
    [Id]                VARCHAR (100)    NOT NULL,
    [SecurityDepositId] VARCHAR (80)     NOT NULL,
    [GLGeneralInfoId]   VARCHAR (10)     NOT NULL,
    [BudgetMasterId]    VARCHAR (20)     NULL,
    [ActivityId]        VARCHAR (10)     NULL,
    [Amount]            DECIMAL (18, 10) NOT NULL,
    [WrittenOffAmount]  DECIMAL (18, 10) NOT NULL,
    [IsWrittenOff]      BIT              NOT NULL,
    [Archive]           BIT              NOT NULL,
    [AddedBy]           VARCHAR (30)     NOT NULL,
    [AddedDate]         DATETIME         NOT NULL,
    [AddedFromIP]       VARCHAR (15)     NOT NULL,
    [UpdatedBy]         VARCHAR (30)     NULL,
    [UpdatedDate]       DATETIME         NULL,
    [UpdatedFromIP]     VARCHAR (15)     NULL,
    CONSTRAINT [PK_SecurityDepositDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SecurityDepositDetail_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_SecurityDepositDetail_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_SecurityDepositDetail_GLGeneralInfo] FOREIGN KEY ([GLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_SecurityDepositDetail_SecurityDeposit] FOREIGN KEY ([SecurityDepositId]) REFERENCES [TRN].[SecurityDeposit] ([Id])
);

