CREATE TABLE [dbo].[LeaveTransactionDetails] (
    [SystemID]       VARCHAR (30)    NOT NULL,
    [LvTrnsSystemID] VARCHAR (30)    NOT NULL,
    [WorkDate]       DATETIME        NULL,
    [DayType]        VARCHAR (10)    NOT NULL,
    [LeaveStatus]    VARCHAR (10)    NULL,
    [IsAvailed]      BIT             CONSTRAINT [DF_LeaveTransactionDetails_IsAvailed] DEFAULT ((0)) NOT NULL,
    [AddedBy]        VARCHAR (100)   NOT NULL,
    [DateAdded]      DATETIME        NOT NULL,
    [UpdatedBy]      VARCHAR (100)   NULL,
    [DateUpdated]    DATETIME        NULL,
    [LeaveDuration]  DECIMAL (18, 2) DEFAULT ((1.0)) NOT NULL,
    [IsFirstHalf]    BIT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_LeaveTransactionDetails] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_LeaveTransactionDetails_LeaveTransaction] FOREIGN KEY ([LvTrnsSystemID]) REFERENCES [dbo].[LeaveTransaction] ([SystemID])
);

