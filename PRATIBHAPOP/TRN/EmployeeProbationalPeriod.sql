CREATE TABLE [TRN].[EmployeeProbationalPeriod] (
    [Id]               VARCHAR (30) NOT NULL,
    [EmployeeId]       VARCHAR (30) NOT NULL,
    [CompanyGroupId]   VARCHAR (10) NOT NULL,
    [CompanyId]        VARCHAR (10) NOT NULL,
    [PlantId]          VARCHAR (10) NULL,
    [ConfirmAfterDays] INT          NULL,
    [ExtendedDays]     INT          NULL,
    [Remarks]          VARCHAR (50) NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_EmployeeProbationalPeriod] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeProbationalPeriod_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_EmployeeProbationalPeriod_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_EmployeeProbationalPeriod_EmployeeProbationalPeriod] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeProbationalPeriod_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

