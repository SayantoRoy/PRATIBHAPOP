CREATE TABLE [dbo].[SalaryHeadWisePaymentModePolicy] (
    [Id]             VARCHAR (50)    NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NULL,
    [PlantId]        VARCHAR (10)    NULL,
    [SalaryHeadId]   VARCHAR (30)    NULL,
    [PaymentMode]    VARCHAR (100)   NULL,
    [Amount]         DECIMAL (18, 2) NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_SalaryHeadWisePaymentModePolicy] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalaryHeadWisePaymentModePolicy_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SalaryHeadWisePaymentModePolicy_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SalaryHeadWisePaymentModePolicy_SalaryHead] FOREIGN KEY ([SalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

