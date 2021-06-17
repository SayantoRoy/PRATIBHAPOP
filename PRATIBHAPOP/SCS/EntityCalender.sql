CREATE TABLE [SCS].[EntityCalender] (
    [Id]               VARCHAR (30)  NOT NULL,
    [CompanyGroupId]   VARCHAR (10)  NULL,
    [EntityId]         VARCHAR (10)  NULL,
    [PlantId]          VARCHAR (10)  NULL,
    [YearlyCalendarId] VARCHAR (30)  NOT NULL,
    [CldDescription]   VARCHAR (100) NULL,
    [FromDate]         DATE          NULL,
    [ToDate]           DATE          NULL,
    [TotalDay]         INT           NOT NULL,
    [Remarks]          VARCHAR (250) NULL,
    [AddedBy]          VARCHAR (30)  NOT NULL,
    [AddedDate]        DATETIME      NOT NULL,
    [AddedFromIP]      VARCHAR (15)  NOT NULL,
    [UpdatedBy]        VARCHAR (30)  NULL,
    [UpdatedDate]      DATETIME      NULL,
    [UpdatedFromIP]    VARCHAR (15)  NULL,
    CONSTRAINT [PK_EntityCalender] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EntityCalender_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_EntityCalender_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_EntityCalender_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_EntityCalender_YearlyCalendar] FOREIGN KEY ([YearlyCalendarId]) REFERENCES [dbo].[YearlyCalendar] ([Id])
);

