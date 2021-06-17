CREATE TABLE [MST].[LineEmployeeAssign] (
    [Id]                     VARCHAR (10) NOT NULL,
    [EmployeeId]             VARCHAR (30) NULL,
    [LineOperationBookingId] INT          NULL,
    [ProductionQty]          INT          NULL,
    [AddedBy]                VARCHAR (30) NOT NULL,
    [AddedDate]              DATETIME     NOT NULL,
    [AddedFromIP]            VARCHAR (15) NOT NULL,
    [UpdatedBy]              VARCHAR (30) NULL,
    [UpdatedDate]            DATETIME     NULL,
    [UpdatedFromIP]          VARCHAR (15) NULL,
    CONSTRAINT [PK_LineEmployeeAssign] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LineEmployeeAssign_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

