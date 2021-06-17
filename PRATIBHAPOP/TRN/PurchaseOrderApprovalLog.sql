CREATE TABLE [TRN].[PurchaseOrderApprovalLog] (
    [Id]             VARCHAR (10)    NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [CompanyId]      VARCHAR (10)    NOT NULL,
    [PlantId]        VARCHAR (10)    NOT NULL,
    [ApprovedBy]     VARCHAR (20)    NOT NULL,
    [Date]           DATE            NOT NULL,
    [POValue]        DECIMAL (18, 2) NOT NULL,
    [Status]         VARCHAR (10)    NOT NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NOT NULL,
    [UpdatedDate]    DATETIME        NOT NULL,
    [UpdatedFromIP]  VARCHAR (15)    NOT NULL,
    [POID]           VARCHAR (10)    NULL,
    CONSTRAINT [PK_PurchaseOrderApprovalLog] PRIMARY KEY CLUSTERED ([Id] ASC)
);

