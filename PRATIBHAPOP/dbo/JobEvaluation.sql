CREATE TABLE [dbo].[JobEvaluation] (
    [Id]              VARCHAR (20) NOT NULL,
    [EvaluationDate]  DATETIME     NOT NULL,
    [PositionCodeId]  VARCHAR (10) NOT NULL,
    [EvaluatorNameId] VARCHAR (30) NOT NULL,
    [ApprovedById]    VARCHAR (30) NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_JobEvaluation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobEvaluation_ApprovedBy] FOREIGN KEY ([ApprovedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_JobEvaluation_EvaluatorName] FOREIGN KEY ([EvaluatorNameId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_JobEvaluation_PositionCode] FOREIGN KEY ([PositionCodeId]) REFERENCES [ORG].[Position] ([Id])
);

