CREATE TABLE [TRN].[PurchaseOrderGroup] (
    [Id]                    VARCHAR (10)    NOT NULL,
    [CompanyGroupId]        VARCHAR (10)    NOT NULL,
    [Sequence]              DECIMAL (18, 2) NOT NULL,
    [Code]                  VARCHAR (10)    NOT NULL,
    [ShortName]             VARCHAR (15)    NOT NULL,
    [StandardName]          VARCHAR (50)    NOT NULL,
    [UserName]              VARCHAR (50)    NOT NULL,
    [Description]           VARCHAR (250)   NULL,
    [Remarks]               VARCHAR (250)   NULL,
    [Active]                BIT             NOT NULL,
    [AddedBy]               VARCHAR (30)    NOT NULL,
    [AddedDate]             DATETIME        NOT NULL,
    [AddedFromIP]           VARCHAR (15)    NOT NULL,
    [UpdatedBy]             VARCHAR (30)    NULL,
    [UpdatedDate]           DATETIME        NULL,
    [UpdatedFromIP]         VARCHAR (15)    NULL,
    [ResponsiblePersonName] VARCHAR (30)    NULL,
    [CompanyId]             VARCHAR (10)    NULL,
    [PlantId]               VARCHAR (10)    NULL,
    CONSTRAINT [PK_PurchaseOrderGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PurchaseOrderGroup_PurchaseOrderGroup] FOREIGN KEY ([Id]) REFERENCES [TRN].[PurchaseOrderGroup] ([Id])
);

