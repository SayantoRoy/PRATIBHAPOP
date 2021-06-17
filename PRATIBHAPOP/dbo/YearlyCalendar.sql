CREATE TABLE [dbo].[YearlyCalendar] (
    [Id]              VARCHAR (30) NOT NULL,
    [CompanyGroupId]  VARCHAR (10) NULL,
    [PlantId]         VARCHAR (10) NULL,
    [YearNo]          INT          NULL,
    [FromDate]        DATE         NULL,
    [ToDate]          DATE         NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    [IsYearEndClosed] BIT          DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_YearlyCalendar] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_YearlyCalendar_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_YearlyCalendar_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

