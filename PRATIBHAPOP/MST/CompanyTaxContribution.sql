CREATE TABLE [MST].[CompanyTaxContribution] (
    [Id]             VARCHAR (30) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NULL,
    [PlantId]        VARCHAR (10) NULL,
    [EmpSystemId]    VARCHAR (30) NULL,
    [TaxYearId]      VARCHAR (10) NULL,
    [IsFixed]        BIT          DEFAULT ((0)) NOT NULL,
    [Amount]         DECIMAL (18) DEFAULT ((0)) NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id]),
    CONSTRAINT [FK__CompanyTa__EmpSy__3A4D7454] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__CompanyTa__Plant__5C23696B] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

