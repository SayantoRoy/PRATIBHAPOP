﻿CREATE TABLE [MST].[VASMaster] (
    [Id]                         VARCHAR (30)    NOT NULL,
    [VASSAM]                     DECIMAL (18, 3) NOT NULL,
    [StandardSAM]                DECIMAL (18, 3) NOT NULL,
    [ProductionSystemId]         VARCHAR (10)    NULL,
    [AvgMaxMin]                  INT             NULL,
    [Frequency]                  VARCHAR (50)    NULL,
    [SPI]                        VARCHAR (50)    NULL,
    [RPM]                        VARCHAR (50)    NULL,
    [MachineAllowances]          DECIMAL (10, 4) NULL,
    [PersonalAllowances]         DECIMAL (10, 4) NULL,
    [AdditionalAllowances]       DECIMAL (10, 4) NULL,
    [OperatorId]                 VARCHAR (150)   NULL,
    [IsAvgCT1]                   BIT             NULL,
    [IsAvgCT2]                   BIT             NULL,
    [IsAvgCT3]                   BIT             NULL,
    [IsAvgCT4]                   BIT             NULL,
    [IsAvgCT5]                   BIT             NULL,
    [Version]                    INT             NULL,
    [IsApproved]                 BIT             NULL,
    [WasApproved]                BIT             NULL,
    [OriginalVideoName]          VARCHAR (250)   NULL,
    [VASVideoName]               VARCHAR (250)   NULL,
    [Remarks]                    VARCHAR (250)   NULL,
    [AddedBy]                    VARCHAR (30)    NOT NULL,
    [AddedDate]                  DATETIME        NOT NULL,
    [AddedFromIP]                VARCHAR (15)    NOT NULL,
    [UpdatedBy]                  VARCHAR (30)    NULL,
    [UpdatedDate]                DATETIME        NULL,
    [UpdatedFromIP]              VARCHAR (15)    NULL,
    [ApprovedBy]                 VARCHAR (30)    NULL,
    [ApprovedDate]               DATETIME        NULL,
    [ApprovedFromIP]             VARCHAR (15)    NULL,
    [FactorValue]                DECIMAL (18, 4) NULL,
    [Acknowledged]               BIT             NULL,
    [VasDescription]             NVARCHAR (512)  NULL,
    [OperationVariationSystemId] VARCHAR (10)    NULL,
    [videoStartTime]             VARCHAR (20)    NULL,
    [Archive]                    BIT             NULL,
    [VASQuantity]                DECIMAL (10, 2) NULL,
    [ArticleId]                  VARCHAR (10)    NULL,
    CONSTRAINT [PK_VASMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    FOREIGN KEY ([OperationVariationSystemId]) REFERENCES [MST].[OperationVariation] ([Id]),
    CONSTRAINT [FK_VASMaster_ProductionSystem_Id] FOREIGN KEY ([ProductionSystemId]) REFERENCES [HKP].[ProductionSystem] ([Id])
);

