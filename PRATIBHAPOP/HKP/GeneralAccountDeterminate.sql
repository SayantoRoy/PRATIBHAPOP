CREATE TABLE [HKP].[GeneralAccountDeterminate] (
    [Id]              VARCHAR (100) NOT NULL,
    [COAId]           VARCHAR (10)  NULL,
    [CompanyId]       VARCHAR (10)  NULL,
    [PlantId]         VARCHAR (10)  NULL,
    [GLGeneralInfoId] VARCHAR (10)  NULL,
    [BudgetMasterId]  VARCHAR (20)  NULL,
    [ActivityId]      VARCHAR (10)  NULL,
    [AddedBy]         VARCHAR (30)  NOT NULL,
    [AddedDate]       DATETIME      NOT NULL,
    [AddedFromIP]     VARCHAR (15)  NOT NULL,
    [UpdatedBy]       VARCHAR (30)  NULL,
    [UpdatedDate]     DATETIME      NULL,
    [UpdatedFromIP]   VARCHAR (15)  NULL,
    CONSTRAINT [PK_GeneralAccountDeterminate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_GeneralAccountDeterminate_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_GeneralAccountDeterminate_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_GeneralAccountDeterminate_COA] FOREIGN KEY ([COAId]) REFERENCES [HKP].[COA] ([Id]),
    CONSTRAINT [FK_GeneralAccountDeterminate_GLGeneralInfo] FOREIGN KEY ([GLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id])
);

