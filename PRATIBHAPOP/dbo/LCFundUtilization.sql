CREATE TABLE [dbo].[LCFundUtilization] (
    [FundUtilization]       VARCHAR (20)    NOT NULL,
    [FundUtilizationText]   VARCHAR (50)    NULL,
    [Percentage]            DECIMAL (18, 2) NULL,
    [CurrencyId]            VARCHAR (10)    NULL,
    [UtilizationSourceType] VARCHAR (20)    NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    CONSTRAINT [PK_LCFundUtilization] PRIMARY KEY CLUSTERED ([FundUtilization] ASC)
);

