CREATE TABLE [dbo].[CompliedShiftDateWise] (
    [EmpSystemId]     VARCHAR (30) NOT NULL,
    [WorkDate]        DATETIME     NOT NULL,
    [CompliedShiftId] VARCHAR (10) NULL,
    [PlantId]         VARCHAR (10) NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_CompliedShiftDateWise] PRIMARY KEY CLUSTERED ([EmpSystemId] ASC, [WorkDate] ASC),
    CONSTRAINT [FK_CompliedShiftDateWise_CompliedShift] FOREIGN KEY ([CompliedShiftId]) REFERENCES [HKP].[CompliedShift] ([Id]),
    CONSTRAINT [FK_CompliedShiftDateWise_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

