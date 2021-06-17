CREATE TABLE [dbo].[Voucher] (
    [Id]            VARCHAR (20) NOT NULL,
    [Date]          DATETIME     NOT NULL,
    [Time]          DATETIME     NOT NULL,
    [PreparedById]  VARCHAR (30) NULL,
    [ApprovedById]  VARCHAR (30) NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Voucher_ApprovedBy] FOREIGN KEY ([ApprovedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_Voucher_PreparedBy] FOREIGN KEY ([PreparedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

