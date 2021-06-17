CREATE TABLE [dbo].[TaxSlabDefineProfessional] (
    [Id]                VARCHAR (30)    NOT NULL,
    [TaxPolicyMasterId] VARCHAR (30)    NOT NULL,
    [YearlyMinValue]    DECIMAL (18, 2) NULL,
    [YearlyMaxValue]    DECIMAL (18, 2) NULL,
    [MonthlyMinValue]   DECIMAL (18, 2) NULL,
    [MonthlyMaxValue]   DECIMAL (18, 2) NULL,
    [YearlyTaxAmount]   DECIMAL (18, 2) NULL,
    [MonthlyTaxAmount]  DECIMAL (18, 2) NULL,
    [SeqenceNo]         DECIMAL (18, 2) NULL,
    [AdjustingAmount]   DECIMAL (18, 2) CONSTRAINT [DF_TaxSlabDefineProfessional_AdjustingAmount] DEFAULT ((0)) NULL,
    [MonthOfAdjustment] INT             CONSTRAINT [DF_TaxSlabDefineProfessional_MonthOfAdjust] DEFAULT ((0)) NULL,
    [PlantID]           VARCHAR (10)    NULL,
    [AddedBy]           VARCHAR (100)   NOT NULL,
    [DateAdded]         DATETIME        NOT NULL,
    [UpdatedBy]         VARCHAR (100)   NULL,
    [DateUpdated]       DATETIME        NULL,
    CONSTRAINT [PK_TaxSlabDefineProfessional] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaxSlabDefineProfessional_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_TaxSlabDefineProfessional_TaxPolicyMaster] FOREIGN KEY ([TaxPolicyMasterId]) REFERENCES [dbo].[TaxPolicyMaster] ([SystemID])
);

