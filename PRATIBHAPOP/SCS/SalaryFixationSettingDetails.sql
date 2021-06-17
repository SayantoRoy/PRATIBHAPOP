CREATE TABLE [SCS].[SalaryFixationSettingDetails] (
    [Id]              VARCHAR (10) NOT NULL,
    [LeaveTypeId]     VARCHAR (10) NULL,
    [SalaryHeadID]    VARCHAR (30) NULL,
    [SalFixSetId]     VARCHAR (10) NULL,
    [AnnualNonCashId] VARCHAR (10) NULL,
    [SequenceNo]      DECIMAL (18) DEFAULT ((0)) NOT NULL,
    [IsMonthly]       BIT          NOT NULL,
    [IsAnnualCash]    BIT          NOT NULL,
    [IsAnnualNonCash] BIT          NOT NULL,
    [IsLeave]         BIT          NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_SalaryFixationSettingDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalaryFixationSettingDetails_AnnualNonCashId] FOREIGN KEY ([AnnualNonCashId]) REFERENCES [SCS].[AnnualNonCash] ([Id]),
    CONSTRAINT [FK_SalaryFixationSettingDetails_LeaveTypeId] FOREIGN KEY ([LeaveTypeId]) REFERENCES [dbo].[LeaveType] ([Id]),
    CONSTRAINT [FK_SalaryFixationSettingDetails_SalaryHeadID] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_SalaryFixationSettingDetails_SalFixSetId] FOREIGN KEY ([SalFixSetId]) REFERENCES [SCS].[SalaryFixationSetting] ([Id])
);

