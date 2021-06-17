CREATE TABLE [dbo].[LeaveTransactionCompanyAssignChd] (
    [SystemID]            VARCHAR (30)  NOT NULL,
    [ComAssignLvSystemID] VARCHAR (30)  NOT NULL,
    [SeqNo]               INT           NULL,
    [LTSystemID]          VARCHAR (10)  NOT NULL,
    [IsExcessAllow]       BIT           CONSTRAINT [DF_LeaveTransactionCompanyAssignChd_IsExcessAllow] DEFAULT ((0)) NOT NULL,
    [AddedBy]             VARCHAR (100) NOT NULL,
    [DateAdded]           DATETIME      NOT NULL,
    [UpdatedBy]           VARCHAR (100) NULL,
    [DateUpdated]         DATETIME      NULL,
    CONSTRAINT [PK_LeaveTransactionCompanyAssignChd] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_LeaveTransactionCompanyAssignChd_LeaveTransactionCompanyAssign] FOREIGN KEY ([ComAssignLvSystemID]) REFERENCES [dbo].[LeaveTransactionCompanyAssign] ([SystemID]),
    CONSTRAINT [FK_LeaveTransactionCompanyAssignChd_LeaveType] FOREIGN KEY ([LTSystemID]) REFERENCES [dbo].[LeaveType] ([Id])
);

