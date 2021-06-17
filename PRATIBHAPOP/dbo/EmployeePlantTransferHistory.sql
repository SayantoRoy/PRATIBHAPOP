CREATE TABLE [dbo].[EmployeePlantTransferHistory] (
    [SystemID]               VARCHAR (30) NOT NULL,
    [EmpSystemID]            VARCHAR (30) NOT NULL,
    [EffectiveDate]          DATETIME     NULL,
    [FromPlantId]            VARCHAR (30) NULL,
    [ToPlantId]              VARCHAR (30) NULL,
    [FromLegalDesignationId] VARCHAR (30) NULL,
    [ToLegalDesignationId]   VARCHAR (30) NULL,
    [FromBudgetCode]         VARCHAR (30) NULL,
    [ToBudgetCode]           VARCHAR (30) NULL,
    [AddedBy]                VARCHAR (30) NOT NULL,
    [AddedDate]              DATETIME     NOT NULL,
    [AddedFromIP]            VARCHAR (30) NOT NULL,
    [UpdatedBy]              VARCHAR (30) NULL,
    [UpdatedDate]            DATETIME     NULL,
    [UpdatedFromIP]          VARCHAR (30) NULL,
    CONSTRAINT [PK__EmployeePlantTransferHistory__SystemID] PRIMARY KEY CLUSTERED ([SystemID] ASC)
);

