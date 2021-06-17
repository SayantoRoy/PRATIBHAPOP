CREATE TABLE [dbo].[EmployeeEligibleForSalaryHeadEnum] (
    [Id]                VARCHAR (30) NOT NULL,
    [SalaryHeadEnum]    VARCHAR (20) NOT NULL,
    [EmpSystemId]       VARCHAR (30) NOT NULL,
    [SalaryStructureId] VARCHAR (30) NOT NULL,
    [IsEligible]        BIT          NOT NULL,
    [CompanyGroupId]    VARCHAR (10) NULL,
    [PlantId]           VARCHAR (10) NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIp]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIp]     VARCHAR (15) NULL,
    CONSTRAINT [PK__Employee__3214EC07BC08C3BE] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK__EmployeeE__Compa__73334DFA] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK__EmployeeE__Plant__74277233] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_EmployeeEligibleForSalaryHeadEnum_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

