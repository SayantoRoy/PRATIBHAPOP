CREATE TABLE [HKP].[ComplianceDocumentSetDetail] (
    [Id]                      VARCHAR (10) NOT NULL,
    [ComplianceDocumentSetId] VARCHAR (10) NOT NULL,
    [ComplianceDocumentId]    VARCHAR (10) NOT NULL,
    [OptionalOrMandatory]     VARCHAR (30) NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [AddedDate]               DATETIME     NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    CONSTRAINT [PK_ComplianceDocumentSetDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ComplianceDocumentSetDetail_ComplianceDocument] FOREIGN KEY ([ComplianceDocumentId]) REFERENCES [HKP].[ComplianceDocument] ([Id]),
    CONSTRAINT [FK_ComplianceDocumentSetDetail_ComplianceDocumentSet] FOREIGN KEY ([ComplianceDocumentSetId]) REFERENCES [HKP].[ComplianceDocumentSet] ([Id])
);

