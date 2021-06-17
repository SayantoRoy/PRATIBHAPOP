CREATE TABLE [MST].[ProjectPlanningPORequisitionMaterialMasterArticle] (
    [Id]                                           VARCHAR (10)    NOT NULL,
    [ProjectPlanningPORequisitionMaterialMasterId] VARCHAR (10)    NOT NULL,
    [PPlanningRequisitionMaterialMasterArticleId]  VARCHAR (10)    NOT NULL,
    [Quantity]                                     DECIMAL (18, 4) NOT NULL,
    [Rate]                                         DECIMAL (18, 4) NOT NULL,
    [AddedBy]                                      VARCHAR (30)    NOT NULL,
    [AddedDate]                                    DATETIME        NOT NULL,
    [AddedFromIP]                                  VARCHAR (15)    NOT NULL,
    [UpdatedBy]                                    VARCHAR (30)    NULL,
    [UpdatedDate]                                  DATETIME        NULL,
    [UpdatedFromIP]                                VARCHAR (15)    NULL,
    [ProjectPlanningRequisitionMaterialMasterId]   VARCHAR (10)    DEFAULT ((0)) NOT NULL,
    [MaterialMasterArticleId]                      VARCHAR (10)    NOT NULL,
    [ProjectPlanningPurchaseOrderId]               VARCHAR (10)    NOT NULL,
    CONSTRAINT [PK_ProjectPlanningPORequisitionMaterialMasterArticle] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProjectPlanningPORequisitionMaterialMasterArticle_MaterialMasterArticle] FOREIGN KEY ([MaterialMasterArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_ProjectPlanningPORequisitionMaterialMasterArticle_ProjectPlanningPORequisitionMaterialMaster] FOREIGN KEY ([ProjectPlanningPORequisitionMaterialMasterId]) REFERENCES [MST].[ProjectPlanningPORequisitionMaterialMaster] ([Id]),
    CONSTRAINT [FK_ProjectPlanningPORequisitionMaterialMasterArticle_ProjectPlanningPORequisitionMaterialMasterArticle1] FOREIGN KEY ([PPlanningRequisitionMaterialMasterArticleId]) REFERENCES [MST].[ProjectPlanningPORequisitionMaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_ProjectPlanningPORequisitionMaterialMasterArticle_ProjectPlanningPurchaseOrder] FOREIGN KEY ([ProjectPlanningPurchaseOrderId]) REFERENCES [MST].[ProjectPlanningPurchaseOrder] ([Id]),
    CONSTRAINT [FK_ProjectPlanningPORequisitionMaterialMasterArticle_ProjectPlanningRequisitionMaterialMaster] FOREIGN KEY ([ProjectPlanningRequisitionMaterialMasterId]) REFERENCES [MST].[ProjectPlanningRequisitionMaterialMaster] ([Id]),
    CONSTRAINT [FK_ProjectPlanningPORequisitionMaterialMasterArticle_UnitOfMeasurement] FOREIGN KEY ([PPlanningRequisitionMaterialMasterArticleId]) REFERENCES [MST].[ProjectPlanningRequisitionMaterialMasterArticle] ([Id])
);

