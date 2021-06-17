CREATE TABLE [dbo].[SalaryProcessLogSummary] (
    [Id]                       VARCHAR (50) NOT NULL,
    [CompanyGroupId]           VARCHAR (10) NULL,
    [PlantId]                  VARCHAR (10) NULL,
    [SalaryProcessId]          VARCHAR (30) NULL,
    [ProcessEligibleEmployees] INT          NULL,
    [SelectedEmployees]        INT          NULL,
    [SalaryStrucNotDefined]    INT          NULL,
    [PresentDaysZero]          INT          NULL,
    [DifferentStatus]          INT          NULL,
    [AddedBy]                  VARCHAR (30) NOT NULL,
    [AddedDate]                DATETIME     NOT NULL,
    [UpdatedBy]                VARCHAR (30) NULL,
    [UpdatedDate]              DATETIME     NULL,
    [NewlyJoinedEmployees]     INT          DEFAULT ((0)) NOT NULL,
    [SeparatedEmployees]       INT          DEFAULT ((0)) NOT NULL,
    [ActiveEmployees]          INT          DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SalaryProcessLogSummary] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalaryProcessLogSummary_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SalaryProcessLogSummary_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalaryProcessLogSummary_SalaryProcMaster] FOREIGN KEY ([SalaryProcessId]) REFERENCES [dbo].[SalaryProcMaster] ([SystemID])
);

