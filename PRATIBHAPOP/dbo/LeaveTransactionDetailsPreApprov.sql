CREATE TABLE [dbo].[LeaveTransactionDetailsPreApprov] (
    [SystemID]       VARCHAR (30)  NOT NULL,
    [LvTrnsSystemID] VARCHAR (30)  NOT NULL,
    [WorkDate]       DATETIME      NULL,
    [DayType]        VARCHAR (5)   NULL,
    [AddedBy]        VARCHAR (100) NOT NULL,
    [DateAdded]      DATETIME      NOT NULL,
    [UpdatedBy]      VARCHAR (100) NULL,
    [DateUpdated]    DATETIME      NULL,
    CONSTRAINT [PK_LeaveTransactionDetailsPreApprov] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_LeaveTransactionDetailsPreApprov_LeaveTransactionPreApprov] FOREIGN KEY ([LvTrnsSystemID]) REFERENCES [dbo].[LeaveTransactionPreApprov] ([SystemID])
);

