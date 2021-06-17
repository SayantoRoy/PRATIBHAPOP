CREATE TABLE [dbo].[PFEmployeeVoluntaryValue] (
    [Id]                VARCHAR (10)    NOT NULL,
    [EmpSystemId]       VARCHAR (30)    NOT NULL,
    [PFEligibleEmpId]   VARCHAR (20)    NOT NULL,
    [EffectiveDate]     DATETIME        NULL,
    [VoluntaryPFValue]  NUMERIC (18, 2) NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    [SalaryStructureId] VARCHAR (20)    NULL,
    CONSTRAINT [PK_PFEmployeeVoluntaryValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PFEmployeeVoluntaryValue_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

