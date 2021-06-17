CREATE TABLE [TRN].[PurchaseReturnpprovalLogTbl] (
    [Id]                  INT             IDENTITY (1, 1) NOT NULL,
    [CompanyGroupId]      VARCHAR (10)    NOT NULL,
    [CompanyId]           VARCHAR (10)    NOT NULL,
    [PlantId]             VARCHAR (10)    NOT NULL,
    [ApprovedBy]          VARCHAR (20)    NOT NULL,
    [Date]                DATE            NOT NULL,
    [PurchaseReturnValue] DECIMAL (18, 2) NOT NULL,
    [Status]              VARCHAR (10)    NOT NULL,
    [AddedBy]             VARCHAR (30)    NULL,
    [AddedDate]           DATETIME        NULL,
    [AddedFromIP]         VARCHAR (15)    NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    [PurchaseReturnID]    VARCHAR (10)    NULL,
    CONSTRAINT [PK_PurchaseReturnpprovalLogTbl] PRIMARY KEY CLUSTERED ([Id] ASC)
);

