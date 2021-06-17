CREATE TABLE [SCS].[EntityCalendar] (
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
    CONSTRAINT [PK_EntityCalendar] PRIMARY KEY CLUSTERED ([Id] ASC)
);

