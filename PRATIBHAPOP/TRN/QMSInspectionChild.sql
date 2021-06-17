CREATE TABLE [TRN].[QMSInspectionChild] (
    [Id]                        VARCHAR (20)    NOT NULL,
    [QMSInspectionId]           VARCHAR (20)    NOT NULL,
    [QMSDefectMasterId]         VARCHAR (10)    NOT NULL,
    [QMSDefectZoneId]           VARCHAR (10)    NULL,
    [MajorMinor]                VARCHAR (10)    NULL,
    [NoOfDefect]                DECIMAL (18, 2) NOT NULL,
    [SkillId]                   VARCHAR (10)    NULL,
    [DefectResponsiblePersonId] VARCHAR (30)    NULL,
    [AddedBy]                   VARCHAR (30)    NOT NULL,
    [AddedDate]                 DATETIME        NOT NULL,
    [AddedFromIP]               VARCHAR (15)    NOT NULL,
    [UpdatedBy]                 VARCHAR (30)    NULL,
    [UpdatedDate]               DATETIME        NULL,
    [UpdatedFromIP]             VARCHAR (15)    NULL,
    CONSTRAINT [PK_QMSInspectionChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_QMSInspectionChild_DefectResponsiblePerson] FOREIGN KEY ([DefectResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_QMSInspectionChild_QMSDefectMaster] FOREIGN KEY ([QMSDefectMasterId]) REFERENCES [MST].[QMSDefectMaster] ([Id]),
    CONSTRAINT [FK_QMSInspectionChild_QMSInspection] FOREIGN KEY ([QMSInspectionId]) REFERENCES [TRN].[QMSInspection] ([Id]),
    CONSTRAINT [FK_QMSInspectionChild_Skill] FOREIGN KEY ([SkillId]) REFERENCES [HKP].[Skill] ([Id])
);

