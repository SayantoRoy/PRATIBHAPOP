﻿CREATE TABLE [dbo].[Resign] (
    [SystemID]         VARCHAR (30)  NOT NULL,
    [EmpInfoSystemID]  VARCHAR (30)  NULL,
    [EmployeeStatue]   VARCHAR (50)  CONSTRAINT [DF_Resign_EmployeeStatue] DEFAULT ('Resign') NOT NULL,
    [DOResign]         DATETIME      NULL,
    [ResignReason]     VARCHAR (100) NULL,
    [IsBlackList]      BIT           NOT NULL,
    [IsEffected]       BIT           CONSTRAINT [DF_Resign_Effect] DEFAULT ((1)) NOT NULL,
    [DOS]              DATETIME      NULL,
    [DOResignWithdraw] DATETIME      NULL,
    [WdwReason]        VARCHAR (100) NULL,
    [WdwAddedBy]       VARCHAR (100) NULL,
    [WdwDateAdded]     DATETIME      NULL,
    [WdwUpdatedBy]     VARCHAR (100) NULL,
    [WdwDateUpdated]   DATETIME      NULL,
    [GroupID]          VARCHAR (10)  NULL,
    [PlantID]          VARCHAR (10)  NULL,
    [AddedBy]          VARCHAR (100) NULL,
    [DateAdded]        DATETIME      NULL,
    [UpdatedBy]        VARCHAR (100) NULL,
    [DateUpdated]      DATETIME      NULL,
    CONSTRAINT [PK_Resign] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_Resign_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_Resign_EmployeeInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_Resign_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);
