CREATE TABLE [MST].[PaidHoursEmployeeAssign] (
    [Id]             VARCHAR (10) NOT NULL,
    [PaidHours]      INT          NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [EmployeeId]     VARCHAR (30) NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_PaidHoursEmployeeAssign] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PaidHoursEmployeeAssign_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PaidHoursEmployeeAssign_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

