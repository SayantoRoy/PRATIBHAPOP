CREATE TABLE [HKP].[PartnerDeterminationProcedureFunction] (
    [Id]                              VARCHAR (10) NOT NULL,
    [CompanyGroupId]                  VARCHAR (10) NULL,
    [PartnerDeterminationProcedureId] VARCHAR (10) NULL,
    [PartnerFunctionId]               VARCHAR (10) NULL,
    [IsMandatory]                     BIT          NOT NULL,
    [IsModifiable]                    BIT          NOT NULL,
    [IsDefaultValue]                  BIT          NOT NULL,
    [Active]                          BIT          NOT NULL,
    [Archive]                         BIT          NOT NULL,
    [AddedBy]                         VARCHAR (30) NOT NULL,
    [AddedDate]                       DATETIME     NOT NULL,
    [AddedFromIP]                     VARCHAR (15) NOT NULL,
    [UpdatedBy]                       VARCHAR (30) NULL,
    [UpdatedDate]                     DATETIME     NULL,
    [UpdatedFromIP]                   VARCHAR (15) NULL,
    CONSTRAINT [PK_PartnerDeterminationProcedureFunction] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PartnerDeterminationProcedureFunction_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PartnerDeterminationProcedureFunction_PartnerDeterminationProcedure] FOREIGN KEY ([PartnerDeterminationProcedureId]) REFERENCES [HKP].[PartnerDeterminationProcedure] ([Id]),
    CONSTRAINT [FK_PartnerDeterminationProcedureFunction_PartnerFunction] FOREIGN KEY ([PartnerFunctionId]) REFERENCES [HKP].[PartnerFunction] ([Id])
);

