﻿CREATE TABLE [dbo].[EmployeeDocument] (
    [Id]                       VARCHAR (20) NOT NULL,
    [PreRecruitmentEmployeeId] VARCHAR (10) NULL,
    [ComplianceDocumentId]     VARCHAR (10) NULL,
    [EmpSystemID]              VARCHAR (30) NULL,
    [FileId]                   VARCHAR (50) NULL,
    [FileName]                 VARCHAR (50) NULL,
    [AddedBy]                  VARCHAR (30) NULL,
    [AddedDate]                DATETIME     NULL,
    [UpdatedBy]                VARCHAR (30) NULL,
    [UpdatedDate]              DATETIME     NULL,
    [IsDocumentApproved]       BIT          DEFAULT ((0)) NOT NULL,
    [ApprovedBy]               VARCHAR (50) NULL,
    [ApprovedFromIP]           VARCHAR (50) NULL,
    [ApprovedDateTime]         DATETIME     NULL,
    [DueDate]                  DATETIME     NULL,
    [DueProcessDateTime]       DATETIME     NULL,
    [IsMailSend]               BIT          DEFAULT ((0)) NOT NULL,
    [DocNumber]                VARCHAR (30) NULL,
    [DocDate]                  DATETIME     NULL,
    [ComplianceDocumentSetId]  VARCHAR (10) NULL,
    [OptionalOrMandatory]      VARCHAR (30) NULL,
    [ResponsiblePersonId]      VARCHAR (30) NULL,
    CONSTRAINT [PK_EmployeeDocument] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeDocument_ComplianceDocumentId] FOREIGN KEY ([ComplianceDocumentId]) REFERENCES [HKP].[ComplianceDocument] ([Id]),
    CONSTRAINT [FK_EmployeeDocument_ComplianceDocumentSetId] FOREIGN KEY ([ComplianceDocumentSetId]) REFERENCES [HKP].[ComplianceDocumentSet] ([Id]),
    CONSTRAINT [FK_EmployeeDocument_EmployeeDocument] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeDocument_PreRecruitmentEmployeeId] FOREIGN KEY ([PreRecruitmentEmployeeId]) REFERENCES [dbo].[PreRecruitmentEmployee] ([Id])
);

