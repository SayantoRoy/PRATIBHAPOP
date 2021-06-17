CREATE TABLE [dbo].[IndividualGratuityPolicy] (
    [Id]               VARCHAR (30)  NOT NULL,
    [EmployeeSystemId] VARCHAR (30)  NOT NULL,
    [TenureYear]       VARCHAR (30)  NOT NULL,
    [TenureMonth]      VARCHAR (30)  NOT NULL,
    [PolicyNo]         VARCHAR (250) NOT NULL,
    [AgreementId]      VARCHAR (30)  NULL,
    [AddedBy]          VARCHAR (30)  NOT NULL,
    [AddedDate]        DATETIME      NOT NULL,
    [AddedFromIP]      VARCHAR (15)  NOT NULL,
    [UpdatedBy]        VARCHAR (30)  NULL,
    [UpdatedDate]      DATETIME      NULL,
    [UpdatedFromIP]    VARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeInfo_EmpSysId] FOREIGN KEY ([EmployeeSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_GratuityInsuranceAgreement_Id] FOREIGN KEY ([AgreementId]) REFERENCES [dbo].[GratuityInsuranceAgreement] ([Id])
);

