﻿CREATE TABLE [TRN].[QMSRejection] (
    [Id]                    VARCHAR (20)  NOT NULL,
    [Date]                  VARCHAR (15)  NOT NULL,
    [ShiftMasterId]         VARCHAR (10)  NOT NULL,
    [EmployeeId]            VARCHAR (30)  NOT NULL,
    [ProcessId]             VARCHAR (10)  NOT NULL,
    [LocationId]            VARCHAR (20)  NOT NULL,
    [ResponsiblePersonId]   VARCHAR (30)  NOT NULL,
    [ProductionReferenceId] VARCHAR (30)  NOT NULL,
    [Remarks]               VARCHAR (250) NULL,
    [AddedBy]               VARCHAR (30)  NOT NULL,
    [AddedDate]             DATETIME      NOT NULL,
    [AddedFromIP]           VARCHAR (15)  NOT NULL,
    [UpdatedBy]             VARCHAR (30)  NULL,
    [UpdatedDate]           DATETIME      NULL,
    [UpdatedFromIP]         VARCHAR (15)  NULL,
    CONSTRAINT [PK_QMSRejection] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_QMSRejection_EmployeeId] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_QMSRejection_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [MST].[QMSMaster] ([Id]),
    CONSTRAINT [FK_QMSRejection_ProcessId] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_QMSRejection_ProductionReference] FOREIGN KEY ([ProductionReferenceId]) REFERENCES [TRN].[ProductionOrder] ([Id]),
    CONSTRAINT [FK_QMSRejection_ResponsiblePerson] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_QMSRejection_ShiftMasterId] FOREIGN KEY ([ShiftMasterId]) REFERENCES [MST].[CompliedShiftGrouping] ([Id])
);
