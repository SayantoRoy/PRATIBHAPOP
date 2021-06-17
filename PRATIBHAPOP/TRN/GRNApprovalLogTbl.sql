CREATE TABLE [TRN].[GRNApprovalLogTbl] (
    [Id]             VARCHAR (50)    NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [CompanyId]      VARCHAR (10)    NOT NULL,
    [PlantId]        VARCHAR (10)    NOT NULL,
    [ApprovedBy]     VARCHAR (20)    NOT NULL,
    [Date]           DATE            NOT NULL,
    [POValue]        DECIMAL (18, 2) NOT NULL,
    [Status]         VARCHAR (10)    NOT NULL,
    [AddedBy]        VARCHAR (30)    NULL,
    [AddedDate]      DATETIME        NULL,
    [AddedFromIP]    VARCHAR (15)    NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    [GRNID]          VARCHAR (10)    NULL,
    CONSTRAINT [PK_GRNApprovalLogTbl] PRIMARY KEY CLUSTERED ([Id] ASC)
);

