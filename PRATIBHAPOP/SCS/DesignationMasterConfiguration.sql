﻿CREATE TABLE [SCS].[DesignationMasterConfiguration] (
    [Id]                          VARCHAR (10) NOT NULL,
    [PlantId]                     VARCHAR (10) NOT NULL,
    [CompanyGroupId]              VARCHAR (10) NOT NULL,
    [IsOTEntitled]                BIT          NULL,
    [AddedBy]                     VARCHAR (30) NOT NULL,
    [AddedDate]                   DATETIME     NULL,
    [AddedFromIP]                 VARCHAR (15) NOT NULL,
    [UpdatedBy]                   VARCHAR (30) NULL,
    [UpdatedDate]                 DATETIME     NULL,
    [UpdatedFromIP]               VARCHAR (15) NULL,
    [BnsPlcMthRetainID]           VARCHAR (20) NULL,
    [DesignationMasterId]         VARCHAR (10) NOT NULL,
    [RecruitmentProcessSetId]     VARCHAR (30) NULL,
    [LeavePolicyMasterId]         VARCHAR (30) NULL,
    [SalaryRuleMasterId]          VARCHAR (30) NULL,
    [SalaryFixationId]            VARCHAR (10) NULL,
    [BonusPolicyMasterId]         VARCHAR (30) NULL,
    [AttdnBonusPmtPolicyMasterId] VARCHAR (20) NULL,
    [SalaryFixationSettingId]     VARCHAR (10) NULL,
    [PFPolicyMasterID]            VARCHAR (20) NULL,
    [ESICPolicyMasterID]          VARCHAR (20) NULL,
    [OverTimePmtPolicyMasterID]   VARCHAR (20) NULL,
    [HolidayPayDayMasterId]       VARCHAR (50) NULL,
    CONSTRAINT [PK_DesignationMasterConfiguration] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([HolidayPayDayMasterId]) REFERENCES [dbo].[HolidayPayDayMaster] ([Id]),
    CONSTRAINT [FK_DesignationMasterConfiguration_AttdnBonusPmtPolicyMaster] FOREIGN KEY ([AttdnBonusPmtPolicyMasterId]) REFERENCES [dbo].[AttdnBonusPmtPolicyMaster] ([ID]),
    CONSTRAINT [FK_DesignationMasterConfiguration_BonusPolicyMaster] FOREIGN KEY ([BonusPolicyMasterId]) REFERENCES [dbo].[BonusPolicyMaster] ([SystemID]),
    CONSTRAINT [FK_DesignationMasterConfiguration_BonusPolicyMonthlyRetainMaster] FOREIGN KEY ([BnsPlcMthRetainID]) REFERENCES [dbo].[BonusPolicyMonthlyRetainMaster] ([ID]),
    CONSTRAINT [FK_DesignationMasterConfiguration_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_DesignationMasterConfiguration_DesignationMaster] FOREIGN KEY ([DesignationMasterId]) REFERENCES [MST].[DesignationMaster] ([Id]),
    CONSTRAINT [FK_DesignationMasterConfiguration_ESICPolicyMaster] FOREIGN KEY ([ESICPolicyMasterID]) REFERENCES [dbo].[ESICPolicyMaster] ([ID]),
    CONSTRAINT [FK_DesignationMasterConfiguration_LeavePolicyMaster] FOREIGN KEY ([LeavePolicyMasterId]) REFERENCES [dbo].[LeavePolicyMaster] ([SystemID]),
    CONSTRAINT [FK_DesignationMasterConfiguration_OverTimePmtPolicyMaster] FOREIGN KEY ([OverTimePmtPolicyMasterID]) REFERENCES [dbo].[OverTimePmtPolicyMaster] ([ID]),
    CONSTRAINT [FK_DesignationMasterConfiguration_PFPolicyMaster] FOREIGN KEY ([PFPolicyMasterID]) REFERENCES [dbo].[PFPolicyMaster] ([ID]),
    CONSTRAINT [FK_DesignationMasterConfiguration_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_DesignationMasterConfiguration_RecruitmentProcessSet] FOREIGN KEY ([RecruitmentProcessSetId]) REFERENCES [MST].[RecruitmentProcessSet] ([Id]),
    CONSTRAINT [FK_DesignationMasterConfiguration_SalaryFixation] FOREIGN KEY ([SalaryFixationId]) REFERENCES [SCS].[SalaryFixation] ([Id]),
    CONSTRAINT [FK_DesignationMasterConfiguration_SalaryFixationSetting] FOREIGN KEY ([SalaryFixationSettingId]) REFERENCES [SCS].[SalaryFixationSetting] ([Id]),
    CONSTRAINT [FK_DesignationMasterConfiguration_SalaryRuleMaster] FOREIGN KEY ([SalaryRuleMasterId]) REFERENCES [dbo].[SalaryRuleMaster] ([SystemID])
);

