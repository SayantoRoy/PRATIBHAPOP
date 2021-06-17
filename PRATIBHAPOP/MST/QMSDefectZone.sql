CREATE TABLE [MST].[QMSDefectZone] (
    [Id]                VARCHAR (10) NOT NULL,
    [QMSDefectMasterId] VARCHAR (10) NOT NULL,
    [DefectZoneId]      VARCHAR (10) NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_QMSDefectZone] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_QMSDefectZone_DefectZone] FOREIGN KEY ([DefectZoneId]) REFERENCES [HKP].[DefectZone] ([Id]),
    CONSTRAINT [FK_QMSDefectZone_QMSDefectMaster] FOREIGN KEY ([QMSDefectMasterId]) REFERENCES [MST].[QMSDefectMaster] ([Id])
);

