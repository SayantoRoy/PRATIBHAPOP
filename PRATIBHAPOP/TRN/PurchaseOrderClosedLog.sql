CREATE TABLE [TRN].[PurchaseOrderClosedLog] (
    [Id]             VARCHAR (10)    NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [CompanyId]      VARCHAR (10)    NOT NULL,
    [PlantId]        VARCHAR (10)    NOT NULL,
    [ClosedBy]       VARCHAR (20)    NULL,
    [Date]           DATE            NOT NULL,
    [POValue]        DECIMAL (18, 2) NULL,
    [Status]         VARCHAR (10)    NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    [POID]           VARCHAR (10)    NULL,
    CONSTRAINT [PK_PurchaseOrderClosedLog] PRIMARY KEY CLUSTERED ([Id] ASC)
);

