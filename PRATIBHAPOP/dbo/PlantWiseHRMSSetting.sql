﻿CREATE TABLE [dbo].[PlantWiseHRMSSetting] (
    [SystemID]                                 VARCHAR (50)  NOT NULL,
    [GroupID]                                  VARCHAR (10)  NULL,
    [PlantID]                                  VARCHAR (10)  NULL,
    [AttdnProcBase]                            VARCHAR (50)  NULL,
    [OTConsiderOn]                             VARCHAR (30)  NULL,
    [MinimumOTMinute]                          INT           CONSTRAINT [DF_PlantWiseHRMSSetting_MinimumOTMinute] DEFAULT ((0)) NOT NULL,
    [OTFractionCalculation]                    VARCHAR (20)  NULL,
    [AddedBy]                                  VARCHAR (100) NULL,
    [DateAdded]                                DATETIME      NULL,
    [UpdatedBy]                                VARCHAR (100) NULL,
    [DateUpdated]                              DATETIME      NULL,
    [DOCBaseON]                                VARCHAR (10)  NOT NULL,
    [DOCCount]                                 INT           NOT NULL,
    [IsPastDOJAllowed]                         BIT           CONSTRAINT [DF__PlantWise__IsPas__3F0807D0] DEFAULT ((0)) NOT NULL,
    [ProbationPeriodAlertBeforeDays]           INT           CONSTRAINT [DF__PlantWise__Proba__7BDC0BE6] DEFAULT ((0)) NOT NULL,
    [PastDOJDaysAllowed]                       INT           CONSTRAINT [DF__PlantWise__PastD__2D73677A] DEFAULT ((0)) NOT NULL,
    [PlantPrefix]                              VARCHAR (5)   NULL,
    [ResignationAlertBeforeDays]               INT           CONSTRAINT [DF__PlantWise__Resig__7A88C051] DEFAULT ((0)) NOT NULL,
    [IncrementAlertBeforeDays]                 INT           DEFAULT ((0)) NOT NULL,
    [IsEmployeeCodeOpenField]                  BIT           DEFAULT ((1)) NOT NULL,
    [EmpCodeStartValue]                        INT           DEFAULT ((0)) NOT NULL,
    [DefaultWeekOff]                           VARCHAR (15)  NULL,
    [IsOTOverHalfDay]                          BIT           DEFAULT ((0)) NOT NULL,
    [IsCityMandatory]                          BIT           CONSTRAINT [PlantWiseHRMSSetting_IsCityMandatory] DEFAULT ((0)) NOT NULL,
    [RoundFigureForOT]                         INT           DEFAULT ((0)) NOT NULL,
    [IsRoundOptionApplicable]                  BIT           DEFAULT ((0)) NOT NULL,
    [IsPreallocationBasedOT]                   BIT           DEFAULT ((0)) NOT NULL,
    [PayableMinimumOT]                         INT           DEFAULT ((0)) NOT NULL,
    [IsOTBasedOnPerMinute]                     BIT           DEFAULT ((1)) NOT NULL,
    [LongTermAbesnteeism]                      INT           DEFAULT ((0)) NOT NULL,
    [IsLongAbsenteeismAuto]                    BIT           DEFAULT ((0)) NOT NULL,
    [TBSDays]                                  INT           DEFAULT ((0)) NOT NULL,
    [IsTBSAuto]                                BIT           DEFAULT ((0)) NOT NULL,
    [IsRemoteAttendanceApprovalRequired]       BIT           DEFAULT ((0)) NOT NULL,
    [IsOTConfirmationAuto]                     BIT           DEFAULT ((0)) NOT NULL,
    [IsOutMissingValidationRequired]           BIT           DEFAULT ((0)) NOT NULL,
    [OperationSetting]                         VARCHAR (20)  NULL,
    [CallAttendanceAfterProfileEntry]          BIT           DEFAULT ((1)) NOT NULL,
    [IsSandwichAbsentInWeekend]                BIT           DEFAULT ((0)) NOT NULL,
    [IsSandwichAbsentInHoliday]                BIT           DEFAULT ((0)) NOT NULL,
    [EmployeeCodeStart]                        VARCHAR (15)  NULL,
    [ProcessSalaryForSeparatedWithZeroPresent] BIT           DEFAULT ((0)) NULL,
    [IsPriorityOfHolidayOverWeekOff]           BIT           DEFAULT ((0)) NOT NULL,
    [ShiftBasedPunchFlag]                      BIT           DEFAULT ((0)) NOT NULL,
    [NoPunchOnWeekoff]                         BIT           DEFAULT ((0)) NOT NULL,
    [NoPunchOnHoliday]                         BIT           DEFAULT ((0)) NOT NULL,
    [NoPunchOnLeave]                           BIT           DEFAULT ((0)) NOT NULL,
    [EmployeeCodeCheckLevel]                   VARCHAR (15)  NULL,
    [IsOTConfirmationAutoForZero]              BIT           DEFAULT ((0)) NOT NULL,
    [IsOTConfirmationAfterLock]                BIT           DEFAULT ((0)) NOT NULL,
    [IsAutoEmpCodeWithPrefix]                  BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_PlantWiseHRMSSetting] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_PlantWiseHRMSSetting_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PlantWiseHRMSSetting_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

