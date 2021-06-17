CREATE TABLE [MST].[FixedAssetDepreciationRule] (
    [Id]                   VARCHAR (10)    NOT NULL,
    [Factor]               DECIMAL (18, 4) NOT NULL,
    [LifeTime]             DECIMAL (18, 4) NOT NULL,
    [SalvageValue]         DECIMAL (18, 4) NOT NULL,
    [DepreciationRules]    VARCHAR (50)    NOT NULL,
    [DepreciationCharge]   VARCHAR (30)    NULL,
    [DepreciationPurchase] VARCHAR (30)    NULL,
    [DepreciationDisposal] VARCHAR (30)    NULL,
    [UniformAcross]        BIT             NOT NULL,
    [Code]                 VARCHAR (10)    NULL,
    [Description]          VARCHAR (250)   NULL,
    [Active]               BIT             NOT NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    CONSTRAINT [PK_FixedAssetDepreciationRule] PRIMARY KEY CLUSTERED ([Id] ASC)
);

