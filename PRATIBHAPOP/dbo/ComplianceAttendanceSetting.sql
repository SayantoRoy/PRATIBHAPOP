CREATE TABLE [dbo].[ComplianceAttendanceSetting] (
    [Id]                                VARCHAR (30) NOT NULL,
    [MaxOTPerDay]                       INT          DEFAULT ((0)) NOT NULL,
    [IsNoPunchOnWeekOffForOTEntitle]    BIT          DEFAULT ((0)) NOT NULL,
    [IsNoPunchOnWeekOffForOTNotEntitle] BIT          DEFAULT ((0)) NOT NULL,
    [IsNoPunchOnHolidayForOTEntitle]    BIT          DEFAULT ((0)) NOT NULL,
    [IsNoPunchOnHolidayForOTNotEntitle] BIT          DEFAULT ((0)) NOT NULL,
    [CompanyGroupId]                    VARCHAR (10) NULL,
    [AddedBy]                           VARCHAR (30) NOT NULL,
    [AddedDate]                         DATETIME     NOT NULL,
    [AddedFromIP]                       VARCHAR (15) NOT NULL,
    [UpdatedBy]                         VARCHAR (30) NULL,
    [UpdatedDate]                       DATETIME     NULL,
    [UpdatedFromIP]                     VARCHAR (15) NULL,
    [PlantId]                           VARCHAR (10) NULL,
    [MaxExtraOTPerDay]                  INT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ComplianceAttendanceSetting_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

