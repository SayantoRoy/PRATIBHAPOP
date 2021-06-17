CREATE TABLE [MST].[OperationAttributeValue] (
    [Id]                   VARCHAR (10)    NOT NULL,
    [OperationId]          VARCHAR (20)    NOT NULL,
    [OperationAttributeId] VARCHAR (10)    NOT NULL,
    [Sequence]             DECIMAL (18, 2) NOT NULL,
    [Code]                 VARCHAR (10)    NOT NULL,
    [ShortName]            VARCHAR (15)    NOT NULL,
    [StandardName]         VARCHAR (50)    NOT NULL,
    [UserName]             VARCHAR (50)    NOT NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    CONSTRAINT [PK_OperationAttributeValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OperationAttributeValue_Operation] FOREIGN KEY ([OperationId]) REFERENCES [MST].[Operation] ([Id]),
    CONSTRAINT [FK_OperationAttributeValue_OperationAttribute] FOREIGN KEY ([OperationAttributeId]) REFERENCES [MST].[OperationAttribute] ([Id])
);

