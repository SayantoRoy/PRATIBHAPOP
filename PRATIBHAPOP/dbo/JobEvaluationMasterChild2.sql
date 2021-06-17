CREATE TABLE [dbo].[JobEvaluationMasterChild2] (
    [Id]                    VARCHAR (20)  NOT NULL,
    [JobEvaluationMasterId] VARCHAR (20)  NOT NULL,
    [Category]              VARCHAR (50)  NOT NULL,
    [Criteria]              VARCHAR (50)  NOT NULL,
    [Code]                  VARCHAR (50)  NOT NULL,
    [Points]                INT           NOT NULL,
    [Remarks]               VARCHAR (250) NULL,
    [AddedBy]               VARCHAR (30)  NOT NULL,
    [AddedDate]             DATETIME      NOT NULL,
    [AddedFromIP]           VARCHAR (15)  NOT NULL,
    [UpdatedBy]             VARCHAR (30)  NULL,
    [UpdatedDate]           DATETIME      NULL,
    [UpdatedFromIP]         VARCHAR (15)  NULL,
    CONSTRAINT [PK_JobEvaluationMasterChild2] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobEvaluationMasterChild2_JobEvaluationMaster] FOREIGN KEY ([JobEvaluationMasterId]) REFERENCES [dbo].[JobEvaluationMaster] ([Id])
);

