CREATE TABLE [dbo].[BonusPolicyPlantWise] (
    [ID]            VARCHAR (30) NOT NULL,
    [BonusPolicyID] VARCHAR (30) NOT NULL,
    [PlantId]       VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_BonusPolicyPlantWise] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_BonusPolicyPlantWise_BonusPolicyMaster] FOREIGN KEY ([BonusPolicyID]) REFERENCES [dbo].[BonusPolicyMaster] ([SystemID]),
    CONSTRAINT [FK_BonusPolicyPlantWise_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

