CREATE TABLE [dbo].[LeaveTransactionCompanyAssign] (
    [SystemID]           VARCHAR (30)  NOT NULL,
    [LvPolMstSystemID]   VARCHAR (30)  NULL,
    [YrCalSystemID]      VARCHAR (30)  NULL,
    [IsConfirm]          BIT           CONSTRAINT [DF_LeaveTransactionCompanyAssign_IsConfirm] DEFAULT ((0)) NOT NULL,
    [GroupID]            VARCHAR (10)  NULL,
    [PlantID]            VARCHAR (10)  NULL,
    [CALAdjWithLvType]   BIT           CONSTRAINT [DF_LeaveTransactionCompanyAssign_CALAdjWithLvType] DEFAULT ((0)) NOT NULL,
    [ExcessLvAdjWithCAL] BIT           CONSTRAINT [DF_LeaveTransactionCompanyAssign_ExcessLvAdjWithCAL] DEFAULT ((0)) NOT NULL,
    [FromDate]           DATETIME      NULL,
    [ToDate]             DATETIME      NULL,
    [LeaveDays]          INT           NULL,
    [LvReason]           VARCHAR (200) NULL,
    [AddedBy]            VARCHAR (100) NOT NULL,
    [DateAdded]          DATETIME      NOT NULL,
    [UpdatedBy]          VARCHAR (100) NULL,
    [DateUpdated]        DATETIME      NULL,
    CONSTRAINT [PK_LeaveTransactionCompanyAssign] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_LeaveTransactionCompanyAssign_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_LeaveTransactionCompanyAssign_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_LeaveTransactionCompanyAssign_YearlyCalendar] FOREIGN KEY ([YrCalSystemID]) REFERENCES [dbo].[YearlyCalendar] ([Id])
);

