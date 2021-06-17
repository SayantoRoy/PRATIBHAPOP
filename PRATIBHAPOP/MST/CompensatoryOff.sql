CREATE TABLE [MST].[CompensatoryOff] (
    [Id]                            VARCHAR (10) NOT NULL,
    [PlantId]                       VARCHAR (10) NOT NULL,
    [OriginalDate]                  DATETIME     NOT NULL,
    [CompensatoryDate]              DATETIME     NOT NULL,
    [CompensatoryDateTreatmentType] VARCHAR (10) NOT NULL,
    [HolidayCategoryId]             VARCHAR (10) NULL,
    [IsOriginalDateOTApplicable]    BIT          CONSTRAINT [DF_CompensatoryOff_IsOriginalDateOTApplicable] DEFAULT ((0)) NOT NULL,
    [ForEntirePlant]                BIT          CONSTRAINT [DF_CompensatoryOff_ForEntirePlant] DEFAULT ((1)) NOT NULL,
    [AddedBy]                       VARCHAR (30) NOT NULL,
    [AddedDate]                     DATETIME     NOT NULL,
    [AddedFromIP]                   VARCHAR (15) NOT NULL,
    [UpdatedBy]                     VARCHAR (30) NULL,
    [UpdatedDate]                   DATETIME     NULL,
    [UpdatedFromIP]                 VARCHAR (15) NULL,
    CONSTRAINT [PK_CompensatoryOff] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompensatoryOff_HolidayCategory] FOREIGN KEY ([HolidayCategoryId]) REFERENCES [SCS].[HolidayCategory] ([Id]),
    CONSTRAINT [FK_CompensatoryOff_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

