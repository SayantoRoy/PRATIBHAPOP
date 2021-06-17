CREATE TABLE [dbo].[DesignationBudget] (
    [Id]                 VARCHAR (30)  NOT NULL,
    [BudgetCodeId]       VARCHAR (10)  NULL,
    [LegalDesignationId] VARCHAR (10)  NULL,
    [Activity]           VARCHAR (50)  NULL,
    [Remarks]            VARCHAR (250) NULL,
    [BudgetNo]           INT           NULL,
    [Requirement]        INT           NOT NULL,
    [AddedBy]            VARCHAR (30)  NOT NULL,
    [AddedDate]          DATETIME      NOT NULL,
    [AddedFromIP]        VARCHAR (15)  NOT NULL,
    [UpdatedBy]          VARCHAR (30)  NULL,
    [UpdatedDate]        DATETIME      NULL,
    [UpdatedFromIP]      VARCHAR (15)  NULL,
    CONSTRAINT [PK_DesignationBudget] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DesignationBudget_LegalDesignation] FOREIGN KEY ([LegalDesignationId]) REFERENCES [HKP].[LegalDesignation] ([Id]),
    CONSTRAINT [FK_DesignationBudget_ManpowerBudget] FOREIGN KEY ([BudgetCodeId]) REFERENCES [MST].[ManpowerBudget] ([Id])
);

