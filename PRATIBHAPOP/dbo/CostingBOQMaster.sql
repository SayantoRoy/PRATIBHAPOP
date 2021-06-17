CREATE TABLE [dbo].[CostingBOQMaster] (
    [Id]               VARCHAR (30)  NOT NULL,
    [EmployeeSystemId] VARCHAR (30)  NULL,
    [CustomerId]       VARCHAR (10)  NULL,
    [Remarks]          VARCHAR (256) NULL,
    [UserName]         VARCHAR (256) NULL,
    [AddedBy]          VARCHAR (30)  NULL,
    [AddedDate]        DATETIME      NULL,
    [AddedFromIP]      VARCHAR (15)  NULL,
    [UpdatedBy]        VARCHAR (30)  NULL,
    [UpdatedDate]      DATETIME      NULL,
    [UpdatedFromIP]    VARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CustomerId]) REFERENCES [HKP].[Party] ([Id]),
    FOREIGN KEY ([EmployeeSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

