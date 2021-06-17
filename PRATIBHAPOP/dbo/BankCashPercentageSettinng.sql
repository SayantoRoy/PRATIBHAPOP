CREATE TABLE [dbo].[BankCashPercentageSettinng] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [HeadLabel]     VARCHAR (50)   NULL,
    [FormulaDes]    VARCHAR (1000) NULL,
    [FormulaDesID]  VARCHAR (500)  NULL,
    [PlantId]       VARCHAR (10)   NULL,
    [AddedBy]       VARCHAR (30)   NOT NULL,
    [AddedDate]     DATETIME       NOT NULL,
    [AddedFromIP]   VARCHAR (15)   NOT NULL,
    [UpdatedBy]     VARCHAR (30)   NULL,
    [UpdatedDate]   DATETIME       NULL,
    [UpdatedFromIP] VARCHAR (15)   NULL,
    CONSTRAINT [PK_BankCashPercentageSettinng] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BankCashPercentageSettinng_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

