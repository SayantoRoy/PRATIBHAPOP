CREATE TABLE [MST].[RecruitmentPlanningProcessSet] (
    [Id]                          VARCHAR (10) NOT NULL,
    [RecruitmentPlanningDetailId] VARCHAR (30) NOT NULL,
    [RecruitmentProcessId]        VARCHAR (10) NOT NULL,
    [EmployeeId]                  VARCHAR (30) NULL,
    [Sequence]                    TINYINT      NULL,
    [RequiredDays]                TINYINT      NULL,
    [TargetDate]                  DATETIME     NOT NULL,
    [AddedBy]                     VARCHAR (30) NOT NULL,
    [AddedFromIP]                 VARCHAR (15) NOT NULL,
    [AddedDate]                   DATETIME     NOT NULL,
    [UpdatedBy]                   VARCHAR (30) NULL,
    [UpdatedDate]                 DATETIME     NULL,
    [UpdatedFromIP]               VARCHAR (15) NULL,
    CONSTRAINT [PK_RecruitmentPlanningProcessSet] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RecruitmentPlanningProcessSet_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_RecruitmentPlanningProcessSet_RecruitmentPlanningDetail] FOREIGN KEY ([RecruitmentPlanningDetailId]) REFERENCES [MST].[RecruitmentPlanningDetail] ([Id]),
    CONSTRAINT [FK_RecruitmentPlanningProcessSet_RecruitmentProcess] FOREIGN KEY ([RecruitmentProcessId]) REFERENCES [HKP].[RecruitmentProcess] ([Id])
);

