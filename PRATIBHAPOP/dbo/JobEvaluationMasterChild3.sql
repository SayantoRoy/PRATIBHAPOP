CREATE TABLE [dbo].[JobEvaluationMasterChild3] (
    [Id]                    VARCHAR (20) NOT NULL,
    [JobEvaluationMasterId] VARCHAR (20) NOT NULL,
    [EmployeeCategoryId]    VARCHAR (10) NOT NULL,
    [AddedBy]               VARCHAR (30) NOT NULL,
    [AddedDate]             DATETIME     NOT NULL,
    [AddedFromIP]           VARCHAR (15) NOT NULL,
    [UpdatedBy]             VARCHAR (30) NULL,
    [UpdatedDate]           DATETIME     NULL,
    [UpdatedFromIP]         VARCHAR (15) NULL,
    CONSTRAINT [PK_JobEvaluationMasterChild3] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobEvaluationMasterChild3_JobEvaluationMaster] FOREIGN KEY ([JobEvaluationMasterId]) REFERENCES [dbo].[JobEvaluationMaster] ([Id])
);

