CREATE TABLE [dbo].[AuthorizationConfig] (
    [Id]            VARCHAR (30) NOT NULL,
    [GroupID]       VARCHAR (10) NOT NULL,
    [CompanyId]     VARCHAR (10) NOT NULL,
    [PlantId]       VARCHAR (10) NOT NULL,
    [EmployeeId]    VARCHAR (30) NOT NULL,
    [ActionStatus]  VARCHAR (50) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_SupervisorSetUp] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SupervisorSetUp_EmployeeId] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

