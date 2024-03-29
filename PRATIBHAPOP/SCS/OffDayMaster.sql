﻿CREATE TABLE [SCS].[OffDayMaster] (
    [Id]                VARCHAR (30)  NOT NULL,
    [CompanyGroupId]    VARCHAR (10)  NULL,
    [PlantId]           VARCHAR (10)  NULL,
    [YearlyCalendarId]  VARCHAR (30)  NULL,
    [CldDescription]    VARCHAR (100) NULL,
    [FromDate]          DATETIME      NULL,
    [ToDate]            DATETIME      NULL,
    [OffDayType]        VARCHAR (10)  NULL,
    [TotalDay]          INT           NOT NULL,
    [Remarks]           VARCHAR (250) NULL,
    [AddedBy]           VARCHAR (30)  NOT NULL,
    [AddedDate]         DATETIME      NOT NULL,
    [AddedFromIP]       VARCHAR (15)  NOT NULL,
    [UpdatedBy]         VARCHAR (30)  NULL,
    [UpdatedDate]       DATETIME      NULL,
    [UpdatedFromIP]     VARCHAR (15)  NULL,
    [HolidayCategoryId] VARCHAR (10)  NULL,
    [IsMandatory]       BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_OffDayMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OffDayMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_OffDayMaster_HolidayCategory] FOREIGN KEY ([HolidayCategoryId]) REFERENCES [SCS].[HolidayCategory] ([Id]),
    CONSTRAINT [FK_OffDayMaster_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_OffDayMaster_YearlyCalendar] FOREIGN KEY ([YearlyCalendarId]) REFERENCES [dbo].[YearlyCalendar] ([Id])
);

