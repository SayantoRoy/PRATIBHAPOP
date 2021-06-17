CREATE TABLE [TRN].[RecipeGlobalMaterialGroup] (
    [Id]                             VARCHAR (30)    NOT NULL,
    [RecipeGlobalMasterId]           VARCHAR (30)    NULL,
    [RecipeGlobalSubprocessId]       VARCHAR (30)    NULL,
    [RecipeMaterialGroupingMasterId] VARCHAR (30)    NULL,
    [Value]                          DECIMAL (18, 2) NULL,
    [UomId]                          VARCHAR (10)    NULL,
    [AddedBy]                        VARCHAR (30)    NOT NULL,
    [AddedDate]                      DATETIME        NOT NULL,
    [AddedFromIP]                    VARCHAR (15)    NOT NULL,
    [UpdatedBy]                      VARCHAR (30)    NULL,
    [UpdatedDate]                    DATETIME        NULL,
    [UpdatedFromIP]                  VARCHAR (15)    NULL,
    CONSTRAINT [PK_RecipeGlobalMaterialGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__RecipeGlobalMaterialGroup__RecipeMaterialGroupingMasterId] FOREIGN KEY ([RecipeMaterialGroupingMasterId]) REFERENCES [MST].[RecipeMaterialGroupingMaster] ([Id])
);

