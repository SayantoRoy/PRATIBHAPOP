CREATE TABLE [dbo].[BOQFGMapping] (
    [Id]                           INT             IDENTITY (1, 1) NOT NULL,
    [FirstCharacteristicsValueId]  VARCHAR (10)    NULL,
    [SecondCharacteristicsValueId] VARCHAR (10)    NULL,
    [ThirdCharacteristicsValueId]  VARCHAR (10)    NULL,
    [OrderQty]                     DECIMAL (18, 4) NULL,
    [PlanOrderQty]                 DECIMAL (18, 4) NULL,
    [BOMQty]                       DECIMAL (18, 4) NULL,
    [BOQDetailId]                  VARCHAR (30)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([BOQDetailId]) REFERENCES [dbo].[BOQDetail] ([Id]),
    FOREIGN KEY ([FirstCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    FOREIGN KEY ([SecondCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    FOREIGN KEY ([ThirdCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id])
);

