CREATE TABLE [TRN].[QualityDefectDetail] (
    [ID]                   VARCHAR (30)    NOT NULL,
    [QualityID]            VARCHAR (30)    NULL,
    [DefectCodeID]         VARCHAR (10)    NULL,
    [FGZoneID]             VARCHAR (10)    NULL,
    [NoOfDefect]           DECIMAL (18, 4) NULL,
    [NoOfMaterial]         DECIMAL (18, 4) NULL,
    [Remarks]              VARCHAR (100)   NULL,
    [AddedBy]              VARCHAR (100)   NULL,
    [AddedDate]            DATETIME        NULL,
    [UpdatedBy]            VARCHAR (100)   NULL,
    [UpdatedDate]          DATETIME        NULL,
    [OperationVariationId] VARCHAR (10)    NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([DefectCodeID]) REFERENCES [MST].[DefectCode] ([Id]),
    FOREIGN KEY ([FGZoneID]) REFERENCES [HKP].[FGZone] ([Id]),
    FOREIGN KEY ([OperationVariationId]) REFERENCES [MST].[OperationVariation] ([Id]),
    FOREIGN KEY ([QualityID]) REFERENCES [TRN].[Quality] ([ID])
);

