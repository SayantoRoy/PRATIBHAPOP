﻿CREATE TABLE [TRN].[MaterialRequsitionDetails] (
    [Id]                                 VARCHAR (30)     NOT NULL,
    [CompanyGroupId]                     VARCHAR (10)     NOT NULL,
    [MaterialReqqusitionMasterId]        VARCHAR (10)     NOT NULL,
    [ActivityId]                         VARCHAR (10)     NOT NULL,
    [MaterialMasterId]                   VARCHAR (30)     NULL,
    [ArticleId]                          VARCHAR (10)     NULL,
    [FirstCharacteristicsId]             VARCHAR (10)     NULL,
    [FirstCharacteristicsValueId]        VARCHAR (10)     NULL,
    [SecondCharacteristicsId]            VARCHAR (20)     NULL,
    [SecondCharacteristicsValueId]       VARCHAR (10)     NULL,
    [ThirdCharacteristicsId]             VARCHAR (20)     NULL,
    [ThirdCharacteristicsValueId]        VARCHAR (10)     NULL,
    [MaterialDetail]                     VARCHAR (300)    NULL,
    [TransactionUoMId]                   VARCHAR (10)     NULL,
    [CurrencyId]                         VARCHAR (10)     NOT NULL,
    [TransactionQty]                     DECIMAL (18, 10) NOT NULL,
    [EstimatedRate]                      DECIMAL (20, 2)  NOT NULL,
    [TotalAmount]                        DECIMAL (20, 2)  NOT NULL,
    [BudgetType]                         VARCHAR (10)     NOT NULL,
    [Reason]                             VARCHAR (250)    NULL,
    [Remarks]                            VARCHAR (250)    NULL,
    [QualityApprovalResponsiblePersonId] VARCHAR (30)     NULL,
    [NeedSpecialAppId]                   VARCHAR (30)     NULL,
    [FutureReqApp]                       VARCHAR (10)     NULL,
    [DeliveryDate]                       DATETIME         NOT NULL,
    [AddedBy]                            VARCHAR (30)     NULL,
    [AddedDate]                          DATETIME         NOT NULL,
    [AddedFromIP]                        VARCHAR (15)     NULL,
    [UpdatedBy]                          VARCHAR (30)     NULL,
    [UpdatedDate]                        DATETIME         NULL,
    [UpdatedFromIP]                      VARCHAR (15)     NULL,
    [CheckedBy]                          VARCHAR (30)     NULL,
    [CheckedByStatus]                    VARCHAR (30)     NULL,
    [AuthorizedBy]                       VARCHAR (30)     NULL,
    [AuthorizedByStatus]                 VARCHAR (30)     NULL,
    [LocalImported]                      VARCHAR (30)     NULL,
    [CommitmentDate]                     DATETIME         NULL,
    [OtherStock]                         DECIMAL (20, 2)  NULL,
    [OwnStock]                           DECIMAL (20, 2)  NULL,
    [PORcvQty]                           DECIMAL (18, 10) NULL,
    [POQtyStatus]                        BIT              NULL,
    [OrginalQty]                         DECIMAL (18, 2)  NULL,
    [BudgetMasterId]                     VARCHAR (20)     NULL,
    [GLGeneralInfoId]                    VARCHAR (10)     NULL,
    [AccessQtyReason]                    VARCHAR (300)    NULL,
    CONSTRAINT [PK_MaterialRD] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Fk_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [Fk_Article] FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [fk_AuthoriedBy] FOREIGN KEY ([AuthorizedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [fk_BudgetMasId] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [fk_CkedBy] FOREIGN KEY ([CheckedBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [Fk_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [Fk_FirstCharacteristicsValue] FOREIGN KEY ([FirstCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [fk_GLGeneralInfoId] FOREIGN KEY ([GLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [Fk_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [fk_MaterialReqqusition] FOREIGN KEY ([MaterialReqqusitionMasterId]) REFERENCES [TRN].[MaterialRequsitionMaster] ([Id]),
    CONSTRAINT [fk_MaterialReqqusitionMasterId] FOREIGN KEY ([MaterialReqqusitionMasterId]) REFERENCES [TRN].[MaterialRequsitionMaster] ([Id]),
    CONSTRAINT [Fk_NeedSpecialApp] FOREIGN KEY ([NeedSpecialAppId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [fk_QualityAResponsId] FOREIGN KEY ([QualityApprovalResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [Fk_SecondCharacteristicsValue] FOREIGN KEY ([SecondCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [Fk_ThirdCharacteristicsValue] FOREIGN KEY ([ThirdCharacteristicsValueId]) REFERENCES [HKP].[CharacteristicsValue] ([Id]),
    CONSTRAINT [Fk_TransactionUoM] FOREIGN KEY ([TransactionUoMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

