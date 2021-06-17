CREATE TABLE [dbo].[LoanAdvanceChild] (
    [SystemID]         VARCHAR (30)  NOT NULL,
    [LoanMstSystemID]  VARCHAR (30)  NOT NULL,
    [MonthNo]          VARCHAR (30)  NULL,
    [YearNo]           VARCHAR (30)  NULL,
    [MonthlyAdjAmount] INT           NULL,
    [PaidAmount]       INT           NULL,
    [BalanceAmount]    INT           NULL,
    [IsDisbusted]      BIT           NULL,
    [SequenceNo]       INT           NULL,
    [AddedBy]          VARCHAR (100) NOT NULL,
    [DateAdded]        DATETIME      NOT NULL,
    [UpdatedBy]        VARCHAR (100) NULL,
    [DateUpdated]      DATETIME      NULL,
    CONSTRAINT [PK_LoanAdvanceChild] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_LoanAdvanceChild_LoanAdvanceMaster] FOREIGN KEY ([LoanMstSystemID]) REFERENCES [dbo].[LoanAdvanceMaster] ([SystemID])
);

