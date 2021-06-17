CREATE TABLE [HKP].[DocumentSetAssignDetail] (
    [Id]                                      VARCHAR (10) NOT NULL,
    [CompanyGroupId]                          VARCHAR (10) NOT NULL,
    [DocumentConfigurationDesignationGroupId] VARCHAR (10) NOT NULL,
    [ComplianceDocumentSetId]                 VARCHAR (10) NOT NULL,
    [ComplianceDocumentId]                    VARCHAR (10) NOT NULL,
    [ResponsiblePersonId]                     VARCHAR (30) NULL,
    [AddedBy]                                 VARCHAR (30) NOT NULL,
    [AddedDate]                               DATETIME     NULL,
    [AddedFromIP]                             VARCHAR (15) NOT NULL,
    [UpdatedBy]                               VARCHAR (30) NULL,
    [UpdatedDate]                             DATETIME     NULL,
    [UpdatedFromIP]                           VARCHAR (15) NULL,
    CONSTRAINT [PK_DocumentSetAssignDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DocumentSetAssignDetail_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_DocumentSetAssignDetail_ComplianceDocument] FOREIGN KEY ([ComplianceDocumentId]) REFERENCES [HKP].[ComplianceDocument] ([Id]),
    CONSTRAINT [FK_DocumentSetAssignDetail_ComplianceDocumentSet] FOREIGN KEY ([ComplianceDocumentSetId]) REFERENCES [HKP].[ComplianceDocumentSet] ([Id]),
    CONSTRAINT [FK_DocumentSetAssignDetail_DocumentConfigurationDesignationGroup] FOREIGN KEY ([DocumentConfigurationDesignationGroupId]) REFERENCES [HKP].[DocumentConfigurationDesignationGroup] ([Id]),
    CONSTRAINT [FK_DocumentSetAssignDetail_EmployeeInformation] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

