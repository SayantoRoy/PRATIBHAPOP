CREATE TABLE [dbo].[JobEvaluationMaster] (
    [Id]                     VARCHAR (20) NOT NULL,
    [AttributeStandardName]  VARCHAR (50) NOT NULL,
    [AttributeUserName]      VARCHAR (50) NULL,
    [DimensionApplicable]    BIT          NULL,
    [PerformanceAttributeId] VARCHAR (20) NOT NULL,
    [AddedBy]                VARCHAR (30) NOT NULL,
    [AddedDate]              DATETIME     NOT NULL,
    [AddedFromIP]            VARCHAR (15) NOT NULL,
    [UpdatedBy]              VARCHAR (30) NULL,
    [UpdatedDate]            DATETIME     NULL,
    [UpdatedFromIP]          VARCHAR (15) NULL,
    CONSTRAINT [PK_JobEvaluationMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobEvaluationMaster_PerformanceAttribute] FOREIGN KEY ([PerformanceAttributeId]) REFERENCES [HKP].[PerformanceAttribute] ([Id])
);

