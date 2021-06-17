CREATE TABLE [MST].[LineOperationBooking] (
    [Id]                      VARCHAR (10)    NOT NULL,
    [LineProductionBookingId] VARCHAR (10)    NULL,
    [Operation]               VARCHAR (100)   NULL,
    [Rate]                    DECIMAL (18, 2) NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    CONSTRAINT [PK_LineOperationBooking] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LineOperationBooking_LineProductionBooking] FOREIGN KEY ([LineProductionBookingId]) REFERENCES [MST].[LineProductionBooking] ([Id])
);

