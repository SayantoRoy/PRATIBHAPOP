﻿CREATE TABLE [HKP].[ApprovalConfiguration] (
    [Id]                                    VARCHAR (10) NOT NULL,
    [CompanyId]                             VARCHAR (10) NOT NULL,
    [PlantId]                               VARCHAR (10) NOT NULL,
    [EntityId]                              VARCHAR (10) NOT NULL,
    [UpperDesignationAndSpecialAllowanceRP] VARCHAR (30) NULL,
    [OrgDocRP]                              VARCHAR (30) NULL,
    [PreRecruitmentDocRP]                   VARCHAR (30) NULL,
    [PostRecruitmentDocRP]                  VARCHAR (30) NULL,
    [RecruitmentFinalConfirmationRP]        VARCHAR (30) NULL,
    [SalaryRP]                              VARCHAR (30) NULL,
    [ProbationRP]                           VARCHAR (30) NULL,
    [ResignationApproval]                   VARCHAR (30) NULL,
    [ProfileUploadRP]                       VARCHAR (30) NULL,
    [ResigRecruitPlanningRP]                VARCHAR (30) NULL,
    [AddedBy]                               VARCHAR (30) NOT NULL,
    [AddedDate]                             DATETIME     NOT NULL,
    [AddedFromIP]                           VARCHAR (15) NOT NULL,
    [UpdatedBy]                             VARCHAR (30) NULL,
    [UpdatedDate]                           DATETIME     NULL,
    [UpdatedFromIP]                         VARCHAR (15) NULL,
    [PostRecruitmentOrgDocRP]               VARCHAR (30) NULL,
    [ResignationApply]                      VARCHAR (30) NULL,
    [LeaveApproval]                         VARCHAR (30) NULL,
    [ProductionPlanning]                    VARCHAR (30) NULL,
    [SalaryFixationApproval]                VARCHAR (30) NULL,
    [SalaryAdvanceApproval]                 VARCHAR (30) NULL,
    [ManualAttendanceApproval]              VARCHAR (30) NULL,
    [ExpanseBookingRP]                      VARCHAR (30) NULL,
    [InOutAttendance]                       VARCHAR (30) NULL,
    CONSTRAINT [PK_ApprovalConfiguration] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ApprovalConfiguration_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_ApprovalConfiguration_EmployeeInformation] FOREIGN KEY ([UpperDesignationAndSpecialAllowanceRP]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_EmployeeInformation1] FOREIGN KEY ([OrgDocRP]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_EmployeeInformation2] FOREIGN KEY ([PreRecruitmentDocRP]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_EmployeeInformation3] FOREIGN KEY ([PostRecruitmentDocRP]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_EmployeeInformation4] FOREIGN KEY ([RecruitmentFinalConfirmationRP]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_EmployeeInformation5] FOREIGN KEY ([SalaryRP]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_EmployeeInformation6] FOREIGN KEY ([ProbationRP]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_EmployeeInformation7] FOREIGN KEY ([ResignationApproval]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_EmployeeInformation8] FOREIGN KEY ([ProfileUploadRP]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_EmployeeInformation9] FOREIGN KEY ([InOutAttendance]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_ApprovalConfiguration_ExpanseBooking] FOREIGN KEY ([ExpanseBookingRP]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_LeaveApproval] FOREIGN KEY ([LeaveApproval]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_ManualAttendanceApproval] FOREIGN KEY ([ManualAttendanceApproval]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_ApprovalConfiguration_PostRecruitmentOrgDocRP] FOREIGN KEY ([PostRecruitmentOrgDocRP]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_ProductionPlanning] FOREIGN KEY ([ProductionPlanning]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_ResignationApply] FOREIGN KEY ([ResignationApply]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_ResigRecruitPlanningRP] FOREIGN KEY ([ResigRecruitPlanningRP]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_SalaryAdvanceApproval] FOREIGN KEY ([SalaryAdvanceApproval]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ApprovalConfiguration_SalaryFixationApproval] FOREIGN KEY ([SalaryFixationApproval]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

