CREATE TABLE [dbo].[TaxPolicyPlantWise] (
    [Id]            VARCHAR (30) NOT NULL,
    [TaxPolicyId]   VARCHAR (30) NOT NULL,
    [PlantId]       VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaxPolicyPlantWise_TaxPolicyMaster] FOREIGN KEY ([TaxPolicyId]) REFERENCES [dbo].[TaxPolicyMaster] ([SystemID]),
    CONSTRAINT [FK_TaxPolicyPlantWise_TaxPolicyPlant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

