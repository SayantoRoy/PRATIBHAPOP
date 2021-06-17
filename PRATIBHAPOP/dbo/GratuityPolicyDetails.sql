CREATE TABLE [dbo].[GratuityPolicyDetails] (
    [Id]                         VARCHAR (30)    NOT NULL,
    [GratuityPolicyMasterId]     VARCHAR (30)    NOT NULL,
    [MaturityFromYear]           DECIMAL (18, 2) NULL,
    [MaturityToYear]             DECIMAL (18, 2) NULL,
    [MaturityFormulaDesID]       VARCHAR (100)   NULL,
    [MaturityFormulaDescription] VARCHAR (100)   NULL,
    [CompanyGroupId]             VARCHAR (10)    NOT NULL,
    [plantId]                    VARCHAR (10)    NOT NULL,
    [AddedBy]                    VARCHAR (30)    NOT NULL,
    [AddedDate]                  DATETIME        NOT NULL,
    [AddedFromIP]                VARCHAR (15)    NOT NULL,
    [UpdatedBy]                  VARCHAR (30)    NULL,
    [UpdatedDate]                DATETIME        NULL,
    [UpdatedFromIP]              VARCHAR (15)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    FOREIGN KEY ([GratuityPolicyMasterId]) REFERENCES [dbo].[GratuityPolicyMaster] ([Id]),
    FOREIGN KEY ([plantId]) REFERENCES [ORG].[Plant] ([Id]),
    FOREIGN KEY ([plantId]) REFERENCES [ORG].[Plant] ([Id])
);

