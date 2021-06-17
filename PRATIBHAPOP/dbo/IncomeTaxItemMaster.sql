CREATE TABLE [dbo].[IncomeTaxItemMaster] (
    [SystemId]         VARCHAR (20) NOT NULL,
    [CompanyId]        VARCHAR (10) NOT NULL,
    [TaxYearId]        VARCHAR (10) NOT NULL,
    [TaxTypeId]        VARCHAR (30) NOT NULL,
    [UserCode]         VARCHAR (50) NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [TaxSavingGroupId] VARCHAR (20) NULL,
    CONSTRAINT [PK__IncomeTaxItemMaster] PRIMARY KEY CLUSTERED ([SystemId] ASC),
    CONSTRAINT [FK_IncomeTaxItemMaster_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_IncomeTaxItemMaster_TaxTypeId] FOREIGN KEY ([TaxTypeId]) REFERENCES [dbo].[TaxType] ([Id]),
    CONSTRAINT [FK_IncomeTaxItemMaster_TaxYearId] FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id]),
    CONSTRAINT [FK_TaxItemMaster_GroupId] FOREIGN KEY ([TaxSavingGroupId]) REFERENCES [HKP].[TaxSavingGroup] ([Id])
);

