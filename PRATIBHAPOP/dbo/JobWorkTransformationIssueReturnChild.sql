CREATE TABLE [dbo].[JobWorkTransformationIssueReturnChild] (
    [Id]                                VARCHAR (50)    NOT NULL,
    [TransformationIssueReturnMasterId] VARCHAR (50)    NOT NULL,
    [MaterialInputId]                   VARCHAR (50)    NOT NULL,
    [Quantity]                          DECIMAL (18, 2) NOT NULL,
    [MaterialMasterId]                  VARCHAR (30)    NOT NULL,
    [MaterialMasterArticleId]           VARCHAR (10)    NOT NULL,
    [Value]                             DECIMAL (18, 2) NOT NULL,
    [LotNumber]                         VARCHAR (50)    NULL,
    [Remarks]                           VARCHAR (250)   NULL,
    [AddedBy]                           VARCHAR (30)    NOT NULL,
    [AddedDate]                         DATETIME        NOT NULL,
    [AddedFromIP]                       VARCHAR (15)    NOT NULL,
    [UpdatedBy]                         VARCHAR (30)    NULL,
    [UpdatedDate]                       DATETIME        NULL,
    [UpdatedFromIP]                     VARCHAR (15)    NULL,
    CONSTRAINT [PK_JobWorkTransformationIssueReturnChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkTransformationIssueReturnChild_MaterialInputId] FOREIGN KEY ([MaterialInputId]) REFERENCES [dbo].[JobWorkTransformationContractChild3] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationIssueReturnChild_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationIssueReturnChild_MaterialMasterArticle] FOREIGN KEY ([MaterialMasterArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationIssueReturnChild_TransformationIssueReturnMaster] FOREIGN KEY ([TransformationIssueReturnMasterId]) REFERENCES [dbo].[JobWorkTransformationIssueReturn] ([Id])
);

