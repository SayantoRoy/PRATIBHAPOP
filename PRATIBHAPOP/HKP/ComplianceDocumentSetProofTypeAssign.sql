CREATE TABLE [HKP].[ComplianceDocumentSetProofTypeAssign] (
    [Id]                            VARCHAR (10) NOT NULL,
    [ComplianceDocumentSetId]       VARCHAR (10) NOT NULL,
    [ComplianceDocumentProofTypeId] VARCHAR (10) NOT NULL,
    [AddedBy]                       VARCHAR (30) NOT NULL,
    [AddedDate]                     DATETIME     NOT NULL,
    [AddedFromIP]                   VARCHAR (15) NOT NULL,
    [UpdatedBy]                     VARCHAR (30) NULL,
    [UpdatedDate]                   DATETIME     NULL,
    [UpdatedFromIP]                 VARCHAR (15) NULL,
    CONSTRAINT [PK_ComplianceDocumentSetProofTypeAssign] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ComplianceDocumentSetProofTypeAssign_ComplianceDocumentProofType] FOREIGN KEY ([ComplianceDocumentProofTypeId]) REFERENCES [HKP].[ComplianceDocumentProofType] ([Id]),
    CONSTRAINT [FK_ComplianceDocumentSetProofTypeAssign_ComplianceDocumentSet] FOREIGN KEY ([ComplianceDocumentSetId]) REFERENCES [HKP].[ComplianceDocumentSet] ([Id])
);

