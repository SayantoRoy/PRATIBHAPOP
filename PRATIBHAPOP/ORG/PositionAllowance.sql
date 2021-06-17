CREATE TABLE [ORG].[PositionAllowance] (
    [Id]                      VARCHAR (30)    NOT NULL,
    [PositionId]              VARCHAR (10)    NOT NULL,
    [CurrencyId]              VARCHAR (10)    NULL,
    [EffectiveDate]           DATETIME        NOT NULL,
    [MinimumSalary]           DECIMAL (18, 2) NOT NULL,
    [MaximumSalary]           DECIMAL (18, 2) NOT NULL,
    [SkillAllowance]          DECIMAL (18, 2) NOT NULL,
    [ResponsibilityAllowance] DECIMAL (18, 2) NOT NULL,
    [Active]                  BIT             NOT NULL,
    [Archive]                 BIT             NOT NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    CONSTRAINT [PK_PositionAllowance] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PositionAllowance_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_PositionAllowance_Position] FOREIGN KEY ([PositionId]) REFERENCES [ORG].[Position] ([Id])
);

