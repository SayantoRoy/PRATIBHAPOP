CREATE TABLE [dbo].[IssueTransactionDocuments] (
    [Id]                 VARCHAR (20)  NOT NULL,
    [IssueTransactionId] VARCHAR (10)  NULL,
    [FileName]           VARCHAR (100) NULL,
    [Description]        VARCHAR (250) NULL,
    [AddedBy]            VARCHAR (30)  NOT NULL,
    [AddedDate]          DATETIME      NOT NULL,
    [AddedFromIP]        VARCHAR (15)  NOT NULL,
    [UpdatedBy]          VARCHAR (30)  NULL,
    [UpdatedDate]        DATETIME      NULL,
    [UpdatedFromIP]      VARCHAR (15)  NULL,
    CONSTRAINT [PK_IssueTransactionDocuments] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_IssueTransactionDocuments_IssueTransaction] FOREIGN KEY ([IssueTransactionId]) REFERENCES [dbo].[IssueTransaction] ([Id])
);

