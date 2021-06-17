CREATE TABLE [SCS].[OffDayDetail] (
    [Id]              VARCHAR (30) NOT NULL,
    [CompanyGroupId]  VARCHAR (10) NULL,
    [PlantId]         VARCHAR (10) NULL,
    [OffDayMasterId]  VARCHAR (30) NULL,
    [OffDayDate]      DATETIME     NULL,
    [DayName]         VARCHAR (30) NULL,
    [IsIncentiveLock] BIT          NOT NULL,
    [DayLengthType]   VARCHAR (30) NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_OffDayDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OffDayDetail_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_OffDayDetail_OffDayMaster] FOREIGN KEY ([OffDayMasterId]) REFERENCES [SCS].[OffDayMaster] ([Id]),
    CONSTRAINT [FK_OffDayDetail_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

