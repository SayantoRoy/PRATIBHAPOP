CREATE TABLE [dbo].[IssueBuyer] (
    [Id]                 VARCHAR (30) NOT NULL,
    [Name]               VARCHAR (50) NULL,
    [BuyerId]            VARCHAR (10) NULL,
    [IssueTransactionId] VARCHAR (10) NULL,
    [AddedBy]            VARCHAR (30) NULL,
    [AddedDate]          DATETIME     NULL,
    [AddedFromIP]        VARCHAR (15) NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([IssueTransactionId]) REFERENCES [dbo].[IssueTransaction] ([Id]),
    FOREIGN KEY ([IssueTransactionId]) REFERENCES [dbo].[IssueTransaction] ([Id]),
    FOREIGN KEY ([IssueTransactionId]) REFERENCES [dbo].[IssueTransaction] ([Id])
);

