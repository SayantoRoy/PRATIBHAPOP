CREATE TABLE [HKP].[EmployeeMobileAppsAuthorization] (
    [Id]                                      VARCHAR (50) NOT NULL,
    [EmployeeId]                              VARCHAR (30) NULL,
    [IsSalaryStructure]                       BIT          NOT NULL,
    [IsPaySlip]                               BIT          NOT NULL,
    [IsMonthlyAttendance]                     BIT          NOT NULL,
    [IsDailyAttendanceNotification]           BIT          NOT NULL,
    [IsSalaryProcessConfirmationNotification] BIT          NOT NULL,
    [IsSalaryDisbursementNotification]        BIT          NOT NULL,
    [IsIncrementNotification]                 BIT          NOT NULL,
    [IsPromotionNotification]                 BIT          NOT NULL,
    [IsLeaveNotification]                     BIT          NOT NULL,
    [PIN]                                     INT          NULL,
    [AddedBy]                                 VARCHAR (30) NULL,
    [AddedDate]                               DATETIME     NULL,
    [AddedFromIP]                             VARCHAR (15) NULL,
    [UpdatedBy]                               VARCHAR (30) NULL,
    [UpdatedDate]                             DATETIME     NULL,
    [UpdatedFromIP]                           VARCHAR (15) NULL,
    CONSTRAINT [PK_EmployeeMobileAppsAuthorization] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeMobileAppsAuthorization_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

