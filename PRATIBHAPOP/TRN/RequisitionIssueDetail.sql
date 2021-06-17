CREATE TABLE [TRN].[RequisitionIssueDetail] (
    [Id]                   VARCHAR (10)    NOT NULL,
    [IssueMasterId]        VARCHAR (10)    NULL,
    [IssueDetailId]        VARCHAR (10)    NULL,
    [IssueRequestMasterId] VARCHAR (10)    NULL,
    [IssueRequestId]       VARCHAR (10)    NULL,
    [IssueQty]             DECIMAL (18, 2) NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    [IssueRejectedQty]     DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_RequisitionIssueDetail] PRIMARY KEY CLUSTERED ([Id] ASC)
);

