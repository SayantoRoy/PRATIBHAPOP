CREATE TABLE [MST].[DesignationMasterLegalDesignation] (
    [Id]                  VARCHAR (10) NOT NULL,
    [DesignationMasterId] VARCHAR (10) NOT NULL,
    [LegalDesignationId]  VARCHAR (10) NOT NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    CONSTRAINT [PK_DesignationMasterLegalDesignation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DesignationMasterLegalDesignation_DesignationMaster] FOREIGN KEY ([DesignationMasterId]) REFERENCES [MST].[DesignationMaster] ([Id]),
    CONSTRAINT [FK_DesignationMasterLegalDesignation_LegalDesignation] FOREIGN KEY ([LegalDesignationId]) REFERENCES [HKP].[LegalDesignation] ([Id])
);

