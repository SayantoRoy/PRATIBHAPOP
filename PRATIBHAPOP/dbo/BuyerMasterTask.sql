CREATE TABLE [dbo].[BuyerMasterTask] (
    [Id]            VARCHAR (30) NOT NULL,
    [BuyerMasterId] VARCHAR (10) NULL,
    [TaskMasterId]  VARCHAR (30) NULL,
    [Active]        BIT          NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    [EmpSystemId]   VARCHAR (30) NULL,
    CONSTRAINT [PK_BuyerMasterTask] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BuyerMasterTask_BuyerMaster] FOREIGN KEY ([BuyerMasterId]) REFERENCES [MST].[BuyerMaster] ([Id]),
    CONSTRAINT [FK_BuyerMasterTask_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_BuyerMasterTask_TaskMaster] FOREIGN KEY ([TaskMasterId]) REFERENCES [dbo].[TaskMaster] ([Id])
);

