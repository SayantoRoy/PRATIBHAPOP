CREATE TABLE [dbo].[TaskTemplateDependency] (
    [Id]                INT             IDENTITY (1, 1) NOT NULL,
    [PreTaskTemplateId] VARCHAR (30)    NULL,
    [TaskTemplateId]    VARCHAR (30)    NULL,
    [Criteria]          VARCHAR (10)    NULL,
    [LagDays]           DECIMAL (10, 4) NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PreTaskTemplateId]) REFERENCES [dbo].[TaskTemplate] ([Id]),
    FOREIGN KEY ([PreTaskTemplateId]) REFERENCES [dbo].[TaskTemplate] ([Id]),
    FOREIGN KEY ([PreTaskTemplateId]) REFERENCES [dbo].[TaskTemplate] ([Id]),
    FOREIGN KEY ([TaskTemplateId]) REFERENCES [dbo].[TaskTemplate] ([Id]),
    FOREIGN KEY ([TaskTemplateId]) REFERENCES [dbo].[TaskTemplate] ([Id]),
    FOREIGN KEY ([TaskTemplateId]) REFERENCES [dbo].[TaskTemplate] ([Id])
);

