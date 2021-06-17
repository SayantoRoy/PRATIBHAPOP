﻿CREATE TABLE [dbo].[PreRecruitmentEmpTraining] (
    [SystemID]                 VARCHAR (30)    NOT NULL,
    [PreRecruitmentEmployeeId] VARCHAR (10)    NULL,
    [TrainingTitle]            VARCHAR (150)   NULL,
    [TopicCovered]             VARCHAR (150)   NULL,
    [InstituteName]            VARCHAR (150)   NULL,
    [CountrySystemID]          VARCHAR (30)    NULL,
    [Location]                 VARCHAR (200)   NULL,
    [TrainingYear]             INT             NULL,
    [DurationUOM]              VARCHAR (10)    NULL,
    [Duration]                 DECIMAL (18, 2) NULL,
    [AddedBy]                  VARCHAR (30)    NULL,
    [AddedDate]                DATETIME        NULL,
    [AddedFromIP]              VARCHAR (15)    NULL,
    [UpdatedBy]                VARCHAR (30)    NULL,
    [UpdatedDate]              DATETIME        NULL,
    [UpdatedFromIP]            VARCHAR (15)    NULL,
    [FileId]                   VARCHAR (50)    NULL,
    [FileName]                 VARCHAR (50)    NULL,
    [IsTrainingApproved]       BIT             CONSTRAINT [DF__PreRecrui__IsTra__4C771187] DEFAULT ((0)) NOT NULL,
    [ApprovedBy]               VARCHAR (50)    NULL,
    [ApprovedFromIP]           VARCHAR (50)    NULL,
    [ApprovedDateTime]         DATETIME        NULL,
    [ComplianceDocumentId]     VARCHAR (10)    NULL,
    CONSTRAINT [PK_PreRecruitmentTraining] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_PreRecruitmentEmpTraining_ComplianceDocument] FOREIGN KEY ([ComplianceDocumentId]) REFERENCES [HKP].[ComplianceDocument] ([Id]),
    CONSTRAINT [FK_PreRecruitmentEmpTraining_PreRecruitmentEmployee] FOREIGN KEY ([PreRecruitmentEmployeeId]) REFERENCES [dbo].[PreRecruitmentEmployee] ([Id])
);

