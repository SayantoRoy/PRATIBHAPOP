CREATE TABLE [dbo].[IncomeTaxItemTransaction] (
    [Id]               VARCHAR (30)    NOT NULL,
    [EmpSystemId]      VARCHAR (30)    NULL,
    [TaxYearId]        VARCHAR (10)    NULL,
    [TaxTypeId]        VARCHAR (30)    NULL,
    [IncTaxItmChildId] VARCHAR (20)    NULL,
    [Value]            DECIMAL (18, 2) NOT NULL,
    [AddedBy]          VARCHAR (30)    NOT NULL,
    [AddedDate]        DATETIME        NOT NULL,
    [AddedFromIP]      VARCHAR (15)    NOT NULL,
    [UpdatedBy]        VARCHAR (30)    NULL,
    [UpdatedDate]      DATETIME        NULL,
    [UpdatedFromIP]    VARCHAR (15)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([IncTaxItmChildId]) REFERENCES [dbo].[IncomeTaxItemChild] ([Id]),
    FOREIGN KEY ([TaxTypeId]) REFERENCES [dbo].[TaxType] ([Id]),
    FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id])
);

