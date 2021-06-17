CREATE TABLE [dbo].[EmployeeOperation] (
    [Id]                   VARCHAR (30)    NOT NULL,
    [EmpSystemId]          VARCHAR (30)    NULL,
    [OperationMasterId]    VARCHAR (10)    NULL,
    [OperationVariationId] VARCHAR (10)    NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    [Sequence]             DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_EmployeeOperation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeOperation_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeOperation_OperationMaster] FOREIGN KEY ([OperationMasterId]) REFERENCES [MST].[OperationMaster] ([Id]),
    CONSTRAINT [FK_EmployeeOperation_OperationVariation] FOREIGN KEY ([OperationVariationId]) REFERENCES [MST].[OperationVariation] ([Id])
);

