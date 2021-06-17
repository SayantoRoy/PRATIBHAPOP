CREATE TABLE [TRN].[ProductMasterEfficency] (
    [Id]                               VARCHAR (10)    NOT NULL,
    [ProductMasterId]                  VARCHAR (10)    NOT NULL,
    [ColumnSequence]                   INT             NOT NULL,
    [EfficencyName]                    VARCHAR (50)    NOT NULL,
    [NoOfWorkStation]                  DECIMAL (18, 2) NOT NULL,
    [EfficencyPercentage]              DECIMAL (18, 2) NOT NULL,
    [SPT]                              DECIMAL (18, 2) NOT NULL,
    [AddedBy]                          VARCHAR (30)    NOT NULL,
    [AddedDate]                        DATETIME        NOT NULL,
    [AddedFromIP]                      VARCHAR (15)    NULL,
    [UpdatedBy]                        VARCHAR (30)    NULL,
    [UpdatedDate]                      DATETIME        NULL,
    [UpdatedFromIP]                    VARCHAR (15)    NULL,
    [StandardWorkingHours]             DECIMAL (18, 2) NULL,
    [StandardWorkingHourCost]          DECIMAL (18, 2) NULL,
    [AdditionalWorkingHourCostPerHour] DECIMAL (18, 2) NULL,
    [ValueLossPercentage]              DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_ProductMasterEfficency] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductMasterEfficency_ProductMaster] FOREIGN KEY ([ProductMasterId]) REFERENCES [MST].[ProductMaster] ([Id])
);

