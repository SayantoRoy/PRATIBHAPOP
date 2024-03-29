﻿CREATE TABLE [HKP].[DocumentConfigurationDesignationGroup] (
    [Id]                      VARCHAR (10) NOT NULL,
    [CompanyGroupId]          VARCHAR (10) NOT NULL,
    [CompanyId]               VARCHAR (10) NOT NULL,
    [ComplianceDocumentSetId] VARCHAR (10) NOT NULL,
    [PlantId]                 VARCHAR (10) NOT NULL,
    [ResponsiblePersonBy]     VARCHAR (30) NOT NULL,
    [EmployeeCategoryId]      VARCHAR (10) NOT NULL,
    [ResponsiblePersonId]     VARCHAR (30) NULL,
    [EmploymentType]          VARCHAR (15) NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedDate]               DATETIME     NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    CONSTRAINT [PK_DocumentConfigurationDesignationGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DocumentConfigurationDesignationGroup_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_DocumentConfigurationDesignationGroup_ComplianceDocument] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_DocumentConfigurationDesignationGroup_ComplianceDocumentSet] FOREIGN KEY ([ComplianceDocumentSetId]) REFERENCES [HKP].[ComplianceDocumentSet] ([Id]),
    CONSTRAINT [FK_DocumentConfigurationDesignationGroup_EmployeeCategory] FOREIGN KEY ([EmployeeCategoryId]) REFERENCES [HKP].[EmployeeCategory] ([Id]),
    CONSTRAINT [FK_DocumentConfigurationDesignationGroup_EmployeeInformation] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_DocumentConfigurationDesignationGroup_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

