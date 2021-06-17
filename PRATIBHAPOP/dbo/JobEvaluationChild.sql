CREATE TABLE [dbo].[JobEvaluationChild] (
    [Id]                    VARCHAR (20)    NOT NULL,
    [JobEvaluationId]       VARCHAR (20)    NOT NULL,
    [JobEvaluationMasterId] VARCHAR (20)    NOT NULL,
    [Factoring]             DECIMAL (18, 2) NOT NULL,
    [Remarks]               VARCHAR (250)   NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    CONSTRAINT [PK_JobEvaluationChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobEvaluationChild_JobEvaluationId] FOREIGN KEY ([JobEvaluationId]) REFERENCES [dbo].[JobEvaluation] ([Id]),
    CONSTRAINT [FK_JobEvaluationChild_JobEvaluationMaster] FOREIGN KEY ([JobEvaluationMasterId]) REFERENCES [dbo].[JobEvaluationMaster] ([Id])
);

