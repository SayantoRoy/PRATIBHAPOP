CREATE TABLE [dbo].[PreRecruitmentProofType] (
    [Id]                       VARCHAR (10) NOT NULL,
    [ComplianceDocumentId]     VARCHAR (10) NULL,
    [PreRecruitmentEmployeeId] VARCHAR (10) NULL,
    [AddedBy]                  VARCHAR (30) NULL,
    [AddedDate]                DATETIME     NULL,
    [AddedFromIP]              VARCHAR (15) NULL,
    [UpdatedBy]                VARCHAR (30) NULL,
    [UpdatedDate]              DATETIME     NULL,
    [UpdatedFromIP]            VARCHAR (15) NULL,
    CONSTRAINT [PK_PreRecruitmentProofType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PreRecruitmentProofType_ComplianceDocumentProofType] FOREIGN KEY ([ComplianceDocumentId]) REFERENCES [HKP].[ComplianceDocumentProofType] ([Id]),
    CONSTRAINT [FK_PreRecruitmentProofType_PreRecruitmentEmployee] FOREIGN KEY ([PreRecruitmentEmployeeId]) REFERENCES [dbo].[PreRecruitmentEmployee] ([Id])
);

