CREATE TABLE [dbo].[JobWorkIssueReturnChild] (
    [Id]                         VARCHAR (50)    NOT NULL,
    [JobWorkIssueReturnMasterId] VARCHAR (50)    NOT NULL,
    [ContractLineItemId]         VARCHAR (50)    NOT NULL,
    [OrderChildId]               VARCHAR (50)    NULL,
    [Quantity]                   DECIMAL (18, 2) NOT NULL,
    [Remarks]                    VARCHAR (250)   NULL,
    [Active]                     VARCHAR (15)    NOT NULL,
    [AddedBy]                    VARCHAR (30)    NOT NULL,
    [AddedDate]                  DATETIME        NOT NULL,
    [AddedFromIP]                VARCHAR (15)    NOT NULL,
    [UpdatedBy]                  VARCHAR (30)    NULL,
    [UpdatedDate]                DATETIME        NULL,
    [UpdatedFromIP]              VARCHAR (15)    NULL,
    CONSTRAINT [PK_JobWorkIssueReturnChild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkIssueReturnChild_ContractLineItemId] FOREIGN KEY ([ContractLineItemId]) REFERENCES [dbo].[JobWorkValueAddedContractChild] ([Id]),
    CONSTRAINT [FK_JobWorkIssueReturnChild_JobWorkIssueReturnMaster] FOREIGN KEY ([JobWorkIssueReturnMasterId]) REFERENCES [dbo].[JobWorkIssueReturn] ([Id]),
    CONSTRAINT [FK_JobWorkIssueReturnChild_OrderChild] FOREIGN KEY ([OrderChildId]) REFERENCES [dbo].[JobWorkValueAddedContractChild2] ([Id])
);

