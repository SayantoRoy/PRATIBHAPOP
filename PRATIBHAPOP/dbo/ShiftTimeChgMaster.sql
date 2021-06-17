﻿CREATE TABLE [dbo].[ShiftTimeChgMaster] (
    [SystemID]                VARCHAR (30)    NOT NULL,
    [GroupID]                 VARCHAR (10)    NULL,
    [PlantID]                 VARCHAR (10)    NULL,
    [ShiftDefinationID]       VARCHAR (30)    NOT NULL,
    [FromDate]                DATETIME        NOT NULL,
    [ToDate]                  DATETIME        NOT NULL,
    [InTime]                  DATETIME        NULL,
    [InTimeStartMargin]       INT             NULL,
    [LateMargin]              INT             NULL,
    [AbsentEndMargin]         INT             NULL,
    [OutTime]                 DATETIME        NULL,
    [OutTimeEndMargin]        INT             NULL,
    [OTStartTime]             INT             NULL,
    [BreakStratTime]          DATETIME        NULL,
    [BreakEndTime]            DATETIME        NULL,
    [BreakPeriod]             INT             NULL,
    [WorkingHour]             FLOAT (53)      NULL,
    [AddedBy]                 VARCHAR (100)   NOT NULL,
    [DateAdded]               DATETIME        NOT NULL,
    [UpdatedBy]               VARCHAR (100)   NULL,
    [DateUpdated]             DATETIME        NULL,
    [IsLunchOutApplicable]    BIT             DEFAULT ((0)) NOT NULL,
    [EarlyOutToleranceMargin] INT             DEFAULT ((0)) NOT NULL,
    [LateInToleranceMargin]   INT             DEFAULT ((0)) NOT NULL,
    [LateInMaxLimit]          INT             NULL,
    [EarlyOutMaxLimit]        INT             DEFAULT ((0)) NULL,
    [HalfDayAbsentMaxLimit]   NUMERIC (18, 2) DEFAULT ((0)) NOT NULL,
    [IncludeBreakTimeInOT]    BIT             DEFAULT ((0)) NOT NULL,
    [IsGapInclude]            BIT             DEFAULT ((0)) NOT NULL,
    [IsLateInApplicable]      BIT             DEFAULT ((0)) NOT NULL,
    [IsEarlyOutApplicable]    BIT             DEFAULT ((0)) NOT NULL,
    [Remarks]                 VARCHAR (30)    NULL,
    [LateMarginSeconds]       INT             NULL,
    [RawINDefinitionFrom]     INT             DEFAULT ((0)) NOT NULL,
    [RawOUTDefinitionFrom]    INT             DEFAULT ((0)) NOT NULL,
    [RawINDefinitionTo]       INT             DEFAULT ((0)) NOT NULL,
    [RawOUTDefinitionTo]      INT             DEFAULT ((0)) NOT NULL,
    [INAfterOUTAsOTStart]     BIT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_ShiftTimeChgMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_ShiftTimeChgMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ShiftTimeChgMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_ShiftTimeChgMaster_ShiftDefination] FOREIGN KEY ([ShiftDefinationID]) REFERENCES [dbo].[ShiftDefination] ([SystemID])
);

