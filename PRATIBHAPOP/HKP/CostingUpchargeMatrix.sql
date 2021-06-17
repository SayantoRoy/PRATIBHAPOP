CREATE TABLE [HKP].[CostingUpchargeMatrix] (
    [Id]             VARCHAR (10)    NOT NULL,
    [WorkCenterDays] INT             NULL,
    [Basic]          DECIMAL (18, 4) NULL,
    [SemiCritical]   DECIMAL (18, 4) NULL,
    [Critical]       DECIMAL (18, 4) NULL,
    [HighlyCritical] DECIMAL (18, 4) NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    [CostingType]    VARCHAR (20)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

