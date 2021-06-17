CREATE TABLE [dbo].[JWByProduct] (
    [Id]                       VARCHAR (20)    NOT NULL,
    [Sequence]                 DECIMAL (18, 2) NULL,
    [JWTransformationMasterId] VARCHAR (20)    NOT NULL,
    [MaterialId]               VARCHAR (30)    NOT NULL,
    [UOMId]                    VARCHAR (10)    NOT NULL,
    [ResponsiblePersonId]      VARCHAR (30)    NULL,
    [MaterialSpecification]    VARCHAR (100)   NOT NULL,
    [WastagePercentage]        DECIMAL (18, 2) DEFAULT ((0)) NULL,
    [Remarks]                  VARCHAR (250)   NULL,
    [AddedDate]                DATETIME        NOT NULL,
    [AddedFromIP]              VARCHAR (15)    NOT NULL,
    [UpdatedBy]                VARCHAR (30)    NULL,
    [UpdatedDate]              DATETIME        NULL,
    [UpdatedFromIP]            VARCHAR (15)    NULL,
    [AddedBy]                  VARCHAR (30)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([JWTransformationMasterId]) REFERENCES [dbo].[JWTransformationMaster] ([Id]),
    FOREIGN KEY ([MaterialId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([UOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

