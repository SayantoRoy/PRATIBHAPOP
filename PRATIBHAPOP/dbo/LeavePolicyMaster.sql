CREATE TABLE [dbo].[LeavePolicyMaster] (
    [SystemID]               VARCHAR (30)  NOT NULL,
    [PolicyCode]             VARCHAR (30)  NULL,
    [PolicyName]             VARCHAR (50)  NULL,
    [EarnedLeaveSystemID]    VARCHAR (30)  NULL,
    [MaternityLeaveSystemID] VARCHAR (30)  NULL,
    [DefaultPolicy]          BIT           NULL,
    [GroupID]                VARCHAR (10)  NULL,
    [PlantID]                VARCHAR (10)  NULL,
    [AddedBy]                VARCHAR (100) NOT NULL,
    [DateAdded]              DATETIME      NOT NULL,
    [UpdatedBy]              VARCHAR (100) NULL,
    [DateUpdated]            DATETIME      NULL,
    CONSTRAINT [PK_LeavePolicyMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_LeavePolicyMaster_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_LeavePolicyMaster_LeavePolicyMaster] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

