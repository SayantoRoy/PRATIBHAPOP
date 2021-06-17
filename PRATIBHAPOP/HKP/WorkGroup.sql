CREATE TABLE [HKP].[WorkGroup] (
    [Id]            VARCHAR (10)    NOT NULL,
    [PlantId]       VARCHAR (10)    NOT NULL,
    [Sequence]      DECIMAL (18, 2) NOT NULL,
    [Code]          VARCHAR (10)    NOT NULL,
    [ShortName]     VARCHAR (15)    NOT NULL,
    [StandardName]  VARCHAR (100)   NOT NULL,
    [UserName]      VARCHAR (100)   NOT NULL,
    [Description]   VARCHAR (250)   NULL,
    [Remarks]       VARCHAR (250)   NULL,
    [Active]        BIT             NOT NULL,
    [Archive]       BIT             NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    [CompanyId]     VARCHAR (10)    NOT NULL,
    CONSTRAINT [PK_WorkGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WorkGroup_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_WorkGroup_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

