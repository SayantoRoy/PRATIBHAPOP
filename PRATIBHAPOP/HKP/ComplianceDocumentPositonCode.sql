CREATE TABLE [HKP].[ComplianceDocumentPositonCode] (
    [Id]                   VARCHAR (10) NOT NULL,
    [ComplianceDocumentId] VARCHAR (10) NOT NULL,
    [PositionId]           VARCHAR (10) NOT NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    CONSTRAINT [PK_ComplianceDocumentPositonCode] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ComplianceDocumentPositonCode_ComplianceDocument] FOREIGN KEY ([ComplianceDocumentId]) REFERENCES [HKP].[ComplianceDocument] ([Id]),
    CONSTRAINT [FK_ComplianceDocumentPositonCode_Position] FOREIGN KEY ([PositionId]) REFERENCES [ORG].[Position] ([Id])
);

