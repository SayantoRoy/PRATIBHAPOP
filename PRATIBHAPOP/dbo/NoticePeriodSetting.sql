CREATE TABLE [dbo].[NoticePeriodSetting] (
    [Id]            VARCHAR (30)   NOT NULL,
    [PlantId]       VARCHAR (10)   NULL,
    [FormulaDes]    VARCHAR (1000) NULL,
    [FormulaDesID]  VARCHAR (500)  NULL,
    [AddedBy]       VARCHAR (30)   NOT NULL,
    [AddedDate]     DATETIME       NOT NULL,
    [AddedFromIP]   VARCHAR (15)   NOT NULL,
    [UpdatedBy]     VARCHAR (30)   NULL,
    [UpdatedDate]   DATETIME       NULL,
    [UpdatedFromIP] VARCHAR (15)   NULL,
    CONSTRAINT [PK_NoticePeriodSetting] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_NoticePeriodSetting_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

