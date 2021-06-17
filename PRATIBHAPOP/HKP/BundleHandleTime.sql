CREATE TABLE [HKP].[BundleHandleTime] (
    [BundleHandleTimeId] INT             IDENTITY (1, 1) NOT NULL,
    [Factor]             VARCHAR (50)    NOT NULL,
    [FactorValue]        DECIMAL (18, 3) NOT NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    CONSTRAINT [PK_BundleHandleTime_1] PRIMARY KEY CLUSTERED ([Factor] ASC)
);

