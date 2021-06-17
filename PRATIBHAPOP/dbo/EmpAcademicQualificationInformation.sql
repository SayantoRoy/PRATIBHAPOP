﻿CREATE TABLE [dbo].[EmpAcademicQualificationInformation] (
    [SystemID]                VARCHAR (30)  NOT NULL,
    [EmpSystemID]             VARCHAR (30)  NOT NULL,
    [TypeIsAcademic]          BIT           NULL,
    [EductLevelSystemID]      VARCHAR (10)  NULL,
    [IsEnglishMedium]         BIT           CONSTRAINT [DF_EmpAcademicQualificationInformation_IsGeneral] DEFAULT ((0)) NOT NULL,
    [HasDistinction]          BIT           CONSTRAINT [DF_EmpAcademicQualificationInformation_IsEnglishMedium] DEFAULT ((0)) NOT NULL,
    [ExamDegreeType]          VARCHAR (100) NULL,
    [StreamId]                VARCHAR (10)  NULL,
    [InstituteName]           VARCHAR (150) NULL,
    [CountryId]               VARCHAR (10)  CONSTRAINT [DF_EmpAcademicQualificationInformation_IsForeignInstitute] DEFAULT ((0)) NULL,
    [YearOfPass]              VARCHAR (10)  NULL,
    [Session]                 VARCHAR (10)  NULL,
    [Achievement]             VARCHAR (100) NULL,
    [AddedBy]                 VARCHAR (100) NOT NULL,
    [DateAdded]               DATETIME      NOT NULL,
    [UpdatedBy]               VARCHAR (100) NULL,
    [DateUpdated]             DATETIME      NULL,
    [FileId]                  VARCHAR (50)  NULL,
    [FileName]                VARCHAR (50)  NULL,
    [IsQualificationApproved] BIT           CONSTRAINT [DF__EmpAcadem__IsQua__53E25DCE] DEFAULT ((0)) NOT NULL,
    [ApprovedBy]              VARCHAR (50)  NULL,
    [ApprovedFromIP]          VARCHAR (50)  NULL,
    [ApprovedDateTime]        DATETIME      NULL,
    [ComplianceDocumentId]    VARCHAR (10)  NULL,
    CONSTRAINT [PK_EmpAcademicQualificationInformation] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_EmpAcademicQualificationInformation_ComplianceDocument] FOREIGN KEY ([ComplianceDocumentId]) REFERENCES [HKP].[ComplianceDocument] ([Id])
);
