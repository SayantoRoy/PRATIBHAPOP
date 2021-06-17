CREATE TABLE [TRN].[InventorySalesApprovalLog] (
    [Id]             INT             IDENTITY (1, 1) NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [CompanyId]      VARCHAR (10)    NOT NULL,
    [PlantId]        VARCHAR (10)    NOT NULL,
    [ApprovedBy]     VARCHAR (20)    NOT NULL,
    [Date]           DATE            NOT NULL,
    [ReqValue]       DECIMAL (18, 2) NOT NULL,
    [Status]         VARCHAR (10)    NOT NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    [GatePassId]     VARCHAR (30)    NULL,
    CONSTRAINT [PK_InventorySalesApprovalLog] PRIMARY KEY CLUSTERED ([Id] ASC)
);

