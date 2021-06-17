CREATE TABLE [dbo].[OperationWiseEmployee] (
    [Id]                   VARCHAR (10) NOT NULL,
    [WorkCenterId]         VARCHAR (30) NOT NULL,
    [OperationVariationId] VARCHAR (10) NOT NULL,
    [EmployeeId]           VARCHAR (30) NOT NULL,
    [EntryDate]            DATE         NOT NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    CONSTRAINT [PK_OperationWiseEmployee] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OperationWiseEmployee_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_OperationWiseEmployee_OperationWiseEmployee] FOREIGN KEY ([OperationVariationId]) REFERENCES [MST].[OperationVariation] ([Id]),
    CONSTRAINT [FK_OperationWiseEmployee_WorkCenterMaster] FOREIGN KEY ([WorkCenterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id])
);

