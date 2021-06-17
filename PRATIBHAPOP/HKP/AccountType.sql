CREATE TABLE [HKP].[AccountType] (
    [Id]             VARCHAR (50)  NOT NULL,
    [IsBalanceSheet] BIT           NOT NULL,
    [BalanceType]    VARCHAR (50)  NOT NULL,
    [Description]    VARCHAR (250) NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_AccountType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

