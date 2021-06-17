CREATE TABLE [dbo].[OTPerMinutePolicy] (
    [Id]                 VARCHAR (10)    NOT NULL,
    [PlantId]            VARCHAR (10)    NULL,
    [OverstayOrEarlyOut] DECIMAL (18, 2) NOT NULL,
    [OffDayAllotedOT]    DECIMAL (18, 2) NOT NULL,
    [AllotedOT]          DECIMAL (18, 2) NOT NULL,
    [StandardOT]         DECIMAL (18, 2) NOT NULL,
    [AdditionalOT]       DECIMAL (18, 2) NOT NULL,
    [LunchOut]           DECIMAL (18, 2) NOT NULL,
    [Remarks]            VARCHAR (250)   NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    CONSTRAINT [PK_OTPerMinutePolicy] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OTPerMinutePolicy_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

