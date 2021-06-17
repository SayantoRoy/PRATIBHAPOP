CREATE TABLE [HKP].[MaterialMasterVendorReconGL] (
    [Id]                        VARCHAR (10) NOT NULL,
    [MaterialMasterId]          VARCHAR (30) NULL,
    [PartyAccountGroupId]       VARCHAR (10) NULL,
    [MaterialMasterGLId]        VARCHAR (10) NULL,
    [VendorReconGLId]           VARCHAR (10) NULL,
    [VendorReconBudgetMasterId] VARCHAR (20) NULL,
    [VendorReconActivityId]     VARCHAR (10) NULL,
    [AddedBy]                   VARCHAR (30) NOT NULL,
    [AddedDate]                 DATETIME     NOT NULL,
    [AddedFromIP]               VARCHAR (15) NOT NULL,
    [UpdatedBy]                 VARCHAR (30) NULL,
    [UpdatedDate]               DATETIME     NULL,
    [UpdatedFromIP]             VARCHAR (15) NULL,
    CONSTRAINT [PK_MaterialMasterVendorReconGL] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterVendorReconGL_Activity] FOREIGN KEY ([VendorReconActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMasterVendorReconGL_GLGeneralInfo_VendorReconGLId] FOREIGN KEY ([VendorReconGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_MaterialMasterVendorReconGL_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterVendorReconGL_MaterialMasterGL] FOREIGN KEY ([MaterialMasterGLId]) REFERENCES [HKP].[MaterialMasterGL] ([Id]),
    CONSTRAINT [FK_MaterialMasterVendorReconGL_PartyAccountGroup] FOREIGN KEY ([PartyAccountGroupId]) REFERENCES [HKP].[PartyAccountGroup] ([Id]),
    CONSTRAINT [FK_MaterialMasterVendorReconGL_VendorReconBudgetMaster] FOREIGN KEY ([VendorReconBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id])
);

