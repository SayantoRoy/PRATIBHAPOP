CREATE TABLE [dbo].[JobEvaluationMasterChild] (
    [Id]                     VARCHAR (20)  NOT NULL,
    [JobEvaluationMasterId]  VARCHAR (20)  NOT NULL,
    [Dimension1ControlName]  VARCHAR (50)  NOT NULL,
    [Dimension1ControlLevel] VARCHAR (50)  NOT NULL,
    [Dimension1ControlCode]  VARCHAR (50)  NOT NULL,
    [Dimension2ControlName]  VARCHAR (50)  NOT NULL,
    [Dimension2ControlLevel] VARCHAR (50)  NOT NULL,
    [Dimension2ControlCode]  VARCHAR (50)  NOT NULL,
    [Points]                 INT           NOT NULL,
    [Remarks]                VARCHAR (250) NULL,
    [AddedBy]                VARCHAR (30)  NOT NULL,
    [AddedDate]              DATETIME      NOT NULL,
    [AddedFromIP]            VARCHAR (15)  NOT NULL,
    [UpdatedBy]              VARCHAR (30)  NULL,
    [UpdatedDate]            DATETIME      NULL,
    [UpdatedFromIP]          VARCHAR (15)  NULL,
    CONSTRAINT [PK_JobEvaluationMasterChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobEvaluationMasterChild_JobEvaluationMaster] FOREIGN KEY ([JobEvaluationMasterId]) REFERENCES [dbo].[JobEvaluationMaster] ([Id])
);

