CREATE TABLE [MST].[OperationPositionMPBudget] (
    [Id]                VARCHAR (20)    NOT NULL,
    [CompanyGroupId]    VARCHAR (10)    NOT NULL,
    [Sequence]          DECIMAL (18, 2) NOT NULL,
    [OperationMasterId] VARCHAR (10)    NOT NULL,
    [EntityId]          VARCHAR (10)    NULL,
    [PositionId]        VARCHAR (10)    NOT NULL,
    [Caption]           VARCHAR (50)    NOT NULL,
    [ManpowerBudget]    NUMERIC (18, 4) NOT NULL,
    [Active]            BIT             NOT NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    [ShiftId]           VARCHAR (30)    NULL,
    CONSTRAINT [FK_OperationPositionMPBudget_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_OperationPositionMPBudget_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_OperationPositionMPBudget_Position] FOREIGN KEY ([PositionId]) REFERENCES [ORG].[Position] ([Id]),
    CONSTRAINT [FK_OperationPositionMPBudget_ShiftdefinationId] FOREIGN KEY ([ShiftId]) REFERENCES [dbo].[ShiftDefination] ([SystemID])
);

