﻿CREATE TABLE [SCS].[EntityCalenderDetail] (
    [Id]               VARCHAR (30) NOT NULL,
    [CompanyGroupId]   VARCHAR (10) NULL,
    [PlantId]          VARCHAR (10) NULL,
    [EntityId]         VARCHAR (10) NULL,
    [EntityCalenderId] VARCHAR (30) NULL,
    [OffDayDate]       DATETIME     NULL,
    [DayName]          VARCHAR (30) NULL,
    [IsIncentiveLock]  BIT          NOT NULL,
    [WorkingTime]      INT          NOT NULL,
    [InNoShift]        INT          NOT NULL,
    [StandardOT]       INT          NOT NULL,
    [ExtraOT]          INT          NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_EntityCalenderDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EntityCalenderDetail_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_EntityCalenderDetail_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_EntityCalenderDetail_EntityCalender] FOREIGN KEY ([EntityCalenderId]) REFERENCES [SCS].[EntityCalender] ([Id]),
    CONSTRAINT [FK_EntityCalenderDetail_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

