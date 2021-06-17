CREATE TABLE [SCS].[RptConfigTemplate] (
    [Id]               VARCHAR (10) NOT NULL,
    [Type]             VARCHAR (50) NOT NULL,
    [PlantId]          VARCHAR (10) NOT NULL,
    [Language]         VARCHAR (20) NOT NULL,
    [FormatName]       VARCHAR (50) NOT NULL,
    [TemplateFileName] VARCHAR (50) NOT NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

