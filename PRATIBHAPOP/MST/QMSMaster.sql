﻿CREATE TABLE [MST].[QMSMaster] (
    [Id]                        VARCHAR (20)    NOT NULL,
    [Sequence]                  DECIMAL (18, 2) NOT NULL,
    [Code]                      VARCHAR (10)    NOT NULL,
    [ShortName]                 VARCHAR (15)    NOT NULL,
    [UserName]                  VARCHAR (50)    NOT NULL,
    [ProcessId]                 VARCHAR (10)    NOT NULL,
    [Location]                  VARCHAR (50)    NOT NULL,
    [WorkCenterId]              VARCHAR (30)    NULL,
    [InspectionTypeId]          VARCHAR (20)    NULL,
    [ResponsiblePersonId]       VARCHAR (30)    NULL,
    [QualityInchargeId]         VARCHAR (30)    NULL,
    [QualityHeadId]             VARCHAR (30)    NULL,
    [QualityUOMId]              VARCHAR (10)    NOT NULL,
    [QualityBenchmarkParameter] DECIMAL (18, 2) NOT NULL,
    [Remarks]                   VARCHAR (250)   NULL,
    [AddedBy]                   VARCHAR (30)    NOT NULL,
    [AddedDate]                 DATETIME        NOT NULL,
    [AddedFromIP]               VARCHAR (15)    NOT NULL,
    [UpdatedBy]                 VARCHAR (30)    NULL,
    [UpdatedDate]               DATETIME        NULL,
    [UpdatedFromIP]             VARCHAR (15)    NULL,
    [InspectionMasterId]        VARCHAR (10)    NOT NULL,
    CONSTRAINT [PK_QMSMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_QMSMaster_EmployeeInformation] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_QMSMaster_InspectionMaster] FOREIGN KEY ([InspectionMasterId]) REFERENCES [HKP].[InspectionMaster] ([Id]),
    CONSTRAINT [FK_QMSMaster_InspectionType] FOREIGN KEY ([InspectionTypeId]) REFERENCES [HKP].[InspectionType] ([Id]),
    CONSTRAINT [FK_QMSMaster_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_QMSMaster_QualityHead] FOREIGN KEY ([QualityHeadId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_QMSMaster_QualityIncharge] FOREIGN KEY ([QualityInchargeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_QMSMaster_UnitOfMeasurement] FOREIGN KEY ([QualityUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id]),
    CONSTRAINT [FK_QMSMaster_WorkCenterMaster] FOREIGN KEY ([WorkCenterId]) REFERENCES [SCS].[WorkCenterMaster] ([Id])
);

