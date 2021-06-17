CREATE TABLE [MMS].[SubModule] (
    [Id]            VARCHAR (20)    NOT NULL,
    [ModuleId]      VARCHAR (20)    NOT NULL,
    [Sequence]      DECIMAL (18, 2) NOT NULL,
    [Code]          VARCHAR (15)    NOT NULL,
    [ShortName]     VARCHAR (15)    NOT NULL,
    [StandardName]  VARCHAR (100)   NOT NULL,
    [UserName]      VARCHAR (100)   NOT NULL,
    [Image]         VARCHAR (20)    NULL,
    [Description]   VARCHAR (250)   NULL,
    [Remarks]       VARCHAR (250)   NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_SubModule] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SubModule_Module] FOREIGN KEY ([ModuleId]) REFERENCES [MMS].[Module] ([Id]) ON DELETE CASCADE
);

