CREATE TABLE [dbo].[RetentionAllowEmployee] (
    [ID]              VARCHAR (20) NOT NULL,
    [EmpSystemID]     VARCHAR (30) NULL,
    [RetetionAllowID] VARCHAR (10) NULL,
    [StartDate]       DATETIME     NOT NULL,
    [IsApproved]      BIT          CONSTRAINT [DF_RetentionAllowEmployee_IsApproved] DEFAULT ((0)) NOT NULL,
    [ApprovedBy]      VARCHAR (30) NOT NULL,
    [ApprovedDate]    DATETIME     NOT NULL,
    [ApprovedFromIP]  VARCHAR (15) NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_RetentionAllowEmployee] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_RetentionAllowEmployee_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_RetentionAllowEmployee_RetentionAllowance] FOREIGN KEY ([RetetionAllowID]) REFERENCES [SCS].[RetentionAllowance] ([Id])
);

