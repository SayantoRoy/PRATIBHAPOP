CREATE TABLE [MST].[ProjectPlanningRequisitionMaterialMasterArticle] (
    [Id]                            VARCHAR (10)    NOT NULL,
    [ProjectPlanningRequisitionId]  VARCHAR (10)    NOT NULL,
    [PPRequisitionMaterialMasterId] VARCHAR (10)    NOT NULL,
    [PPReuisitionArticleId]         VARCHAR (30)    NOT NULL,
    [Quantity]                      DECIMAL (18, 4) NOT NULL,
    [AddedBy]                       VARCHAR (30)    NOT NULL,
    [AddedDate]                     DATETIME        NOT NULL,
    [AddedFromIP]                   VARCHAR (15)    NOT NULL,
    [UpdatedBy]                     VARCHAR (30)    NULL,
    [UpdatedDate]                   DATETIME        NULL,
    [UpdatedFromIP]                 VARCHAR (15)    NULL,
    [MaterialMasterId]              VARCHAR (30)    NULL,
    CONSTRAINT [PK_ProjectPlanningRequisitionMaterialMasterArticle] PRIMARY KEY CLUSTERED ([Id] ASC)
);

