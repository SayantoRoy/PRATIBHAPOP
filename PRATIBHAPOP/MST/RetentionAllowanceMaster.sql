CREATE TABLE [MST].[RetentionAllowanceMaster] (
    [Id]                    VARCHAR (10) NOT NULL,
    [EffectiveDate]         DATE         NULL,
    [IsAbsentismApplicable] BIT          NULL,
    [AddedBy]               VARCHAR (30) NULL,
    [AddedDate]             DATETIME     NULL,
    [AddedFromIP]           VARCHAR (15) NULL,
    [UpdatedBy]             VARCHAR (30) NULL,
    [UpdatedDate]           DATETIME     NULL,
    [UpdatedFromIP]         VARCHAR (15) NULL,
    [PlantId]               VARCHAR (10) NULL,
    CONSTRAINT [PK_RetentionAllowanceMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RetentionAllowanceMaster-plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

