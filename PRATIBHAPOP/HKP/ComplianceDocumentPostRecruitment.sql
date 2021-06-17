CREATE TABLE [HKP].[ComplianceDocumentPostRecruitment] (
    [Id]                   VARCHAR (10) NOT NULL,
    [ComplianceDocumentId] VARCHAR (10) NOT NULL,
    [PostRecruitment]      VARCHAR (50) NOT NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    CONSTRAINT [PK_ComplianceDocumentPostRecruitment] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ComplianceDocumentPostRecruitment_ComplianceDocument] FOREIGN KEY ([ComplianceDocumentId]) REFERENCES [HKP].[ComplianceDocument] ([Id])
);

