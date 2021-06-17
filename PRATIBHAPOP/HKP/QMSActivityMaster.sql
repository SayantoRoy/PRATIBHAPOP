CREATE TABLE [HKP].[QMSActivityMaster] (
    [Id]                         VARCHAR (10)    NOT NULL,
    [SOPId]                      VARCHAR (10)    NULL,
    [ShortName]                  VARCHAR (15)    NOT NULL,
    [StandardName]               VARCHAR (50)    NOT NULL,
    [UserName]                   VARCHAR (50)    NOT NULL,
    [QMSActivityCategoryId]      VARCHAR (10)    NOT NULL,
    [CriticalityLevel]           VARCHAR (20)    NOT NULL,
    [QualityActivityCheckTypeId] VARCHAR (10)    NULL,
    [BusinessProcessId]          VARCHAR (10)    NOT NULL,
    [BusinessProcessTypeId]      VARCHAR (10)    NOT NULL,
    [ResponsiblePersonId]        VARCHAR (30)    NULL,
    [AuditFrequency]             DECIMAL (18, 2) NULL,
    [Remarks]                    VARCHAR (250)   NULL,
    [AddedBy]                    VARCHAR (30)    NOT NULL,
    [AddedDate]                  DATETIME        NOT NULL,
    [AddedFromIP]                VARCHAR (15)    NOT NULL,
    [UpdatedBy]                  VARCHAR (30)    NULL,
    [UpdatedDate]                DATETIME        NULL,
    [UpdatedFromIP]              VARCHAR (15)    NULL,
    [PositionId]                 VARCHAR (10)    NULL,
    CONSTRAINT [PK_QMSActivityMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

