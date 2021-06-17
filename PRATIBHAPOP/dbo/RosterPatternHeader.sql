CREATE TABLE [dbo].[RosterPatternHeader] (
    [Id]            VARCHAR (30)  NOT NULL,
    [ShortName]     VARCHAR (15)  NOT NULL,
    [StandardName]  VARCHAR (50)  NOT NULL,
    [UserName]      VARCHAR (50)  NOT NULL,
    [Description]   VARCHAR (250) NULL,
    [Remarks]       VARCHAR (250) NULL,
    [Active]        BIT           NOT NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    [PlantId]       VARCHAR (10)  NULL,
    CONSTRAINT [PK_RosterPatternHeader] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RosterPatternHeader_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

