CREATE TABLE [dbo].[OverTimePmtPolicyDetails] (
    [ID]                  VARCHAR (20)    NOT NULL,
    [OverTimePmtPolicyID] VARCHAR (20)    NOT NULL,
    [OverTimeDayType]     VARCHAR (20)    NOT NULL,
    [IsFixed]             BIT             NULL,
    [FixedValue]          NUMERIC (18, 2) NULL,
    [IsFormula]           BIT             NULL,
    [FormulaDes]          VARCHAR (1000)  NULL,
    [FormulaDesID]        VARCHAR (500)   NULL,
    [SequenceNo]          INT             NULL,
    [SalaryHeadID]        VARCHAR (500)   NULL,
    [IsDependOnEarning]   BIT             CONSTRAINT [DF_OverTimePmtPolicyDetails_IsDependOnEarning] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_OverTimePmtPolicyDetails] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_OverTimePmtPolicyDetails_OverTimePmtPolicyMaster] FOREIGN KEY ([OverTimePmtPolicyID]) REFERENCES [dbo].[OverTimePmtPolicyMaster] ([ID])
);

