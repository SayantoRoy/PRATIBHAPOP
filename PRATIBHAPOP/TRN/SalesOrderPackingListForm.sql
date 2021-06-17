CREATE TABLE [TRN].[SalesOrderPackingListForm] (
    [Id]                            VARCHAR (30)    NOT NULL,
    [SalesOrderPackingListMasterId] VARCHAR (30)    NULL,
    [FirstFormId]                   VARCHAR (30)    NULL,
    [PackingFormId]                 VARCHAR (10)    NULL,
    [PackingFormNo]                 VARCHAR (30)    NULL,
    [ContainerQty]                  INT             NULL,
    [ContentQty]                    DECIMAL (18, 2) NULL,
    [PackFormType]                  VARCHAR (10)    NULL,
    [AddedBy]                       VARCHAR (30)    NOT NULL,
    [AddedDate]                     DATETIME        NOT NULL,
    [AddedFromIP]                   VARCHAR (15)    NOT NULL,
    [UpdatedBy]                     VARCHAR (30)    NULL,
    [UpdatedDate]                   DATETIME        NULL,
    [UpdatedFromIP]                 VARCHAR (15)    NULL,
    CONSTRAINT [PK_SalesOrderPackingListForm] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalesOrderPackingListForm_SalesOrderPackingListMaster] FOREIGN KEY ([SalesOrderPackingListMasterId]) REFERENCES [TRN].[SalesOrderPackingListMaster] ([Id])
);

