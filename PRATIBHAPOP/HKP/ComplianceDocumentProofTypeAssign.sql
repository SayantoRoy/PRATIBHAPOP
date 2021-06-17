CREATE TABLE [HKP].[ComplianceDocumentProofTypeAssign] (
    [Id]                            VARCHAR (10) NOT NULL,
    [ComplianceDocumentId]          VARCHAR (10) NOT NULL,
    [ComplianceDocumentProofTypeId] VARCHAR (10) NOT NULL,
    [AddedBy]                       VARCHAR (30) NOT NULL,
    [AddedDate]                     DATETIME     NOT NULL,
    [AddedFromIP]                   VARCHAR (15) NOT NULL,
    [UpdatedBy]                     VARCHAR (30) NULL,
    [UpdatedDate]                   DATETIME     NULL,
    [UpdatedFromIP]                 VARCHAR (15) NULL,
    CONSTRAINT [PK_ComplianceDocumentProofTypeAssign] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ComplianceDocumentProofTypeAssign_ComplianceDocument] FOREIGN KEY ([ComplianceDocumentId]) REFERENCES [HKP].[ComplianceDocument] ([Id]),
    CONSTRAINT [FK_ComplianceDocumentProofTypeAssign_ComplianceDocumentProofType] FOREIGN KEY ([ComplianceDocumentProofTypeId]) REFERENCES [HKP].[ComplianceDocumentProofType] ([Id])
);

