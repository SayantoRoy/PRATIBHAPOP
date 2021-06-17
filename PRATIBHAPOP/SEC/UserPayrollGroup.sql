CREATE TABLE [SEC].[UserPayrollGroup] (
    [Id]             VARCHAR (10) NOT NULL,
    [UserId]         VARCHAR (10) NOT NULL,
    [PayrollGroupId] VARCHAR (10) NOT NULL,
    [EmployeeId]     VARCHAR (30) NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_UserPayrollGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserPayrollGroup_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_UserPayrollGroup_PayrollGroup] FOREIGN KEY ([PayrollGroupId]) REFERENCES [HKP].[PayrollGroup] ([Id]),
    CONSTRAINT [FK_UserPayrollGroup_User] FOREIGN KEY ([UserId]) REFERENCES [SEC].[User] ([Id])
);

