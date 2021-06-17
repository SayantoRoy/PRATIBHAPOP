CREATE TABLE [TRN].[RecipeWashSubprocess] (
    [Id]                 VARCHAR (30)    NOT NULL,
    [RecipeWashMasterID] VARCHAR (30)    NULL,
    [SubprocessId]       VARCHAR (10)    NULL,
    [Sequence]           DECIMAL (18, 2) NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    CONSTRAINT [PK_RecipeWashSubprocess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RecipeWashSubprocess_RecipeWashMaster] FOREIGN KEY ([RecipeWashMasterID]) REFERENCES [TRN].[RecipeWashMaster] ([Id]),
    CONSTRAINT [FK_RecipeWashSubprocess_Subprocess] FOREIGN KEY ([SubprocessId]) REFERENCES [HKP].[SubProcess] ([Id])
);

