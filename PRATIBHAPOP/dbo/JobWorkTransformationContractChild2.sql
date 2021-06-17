CREATE TABLE [dbo].[JobWorkTransformationContractChild2] (
    [Id]                                         VARCHAR (50)    NOT NULL,
    [JobWorkTransformationContractChildMasterId] VARCHAR (50)    NOT NULL,
    [OrderType]                                  VARCHAR (50)    NOT NULL,
    [CustomerId]                                 VARCHAR (10)    NOT NULL,
    [MasterOrderNoId]                            VARCHAR (10)    NOT NULL,
    [MasterOrderItemId]                          VARCHAR (10)    NOT NULL,
    [ParticularSpecification]                    VARCHAR (50)    NOT NULL,
    [OutputMaterialUOMId]                        VARCHAR (10)    NOT NULL,
    [Quantity]                                   DECIMAL (18, 2) NOT NULL,
    [PlanQuantity]                               DECIMAL (18, 2) NOT NULL,
    [Remarks]                                    VARCHAR (250)   NULL,
    [AddedBy]                                    VARCHAR (30)    NOT NULL,
    [AddedDate]                                  DATETIME        NOT NULL,
    [AddedFromIP]                                VARCHAR (15)    NOT NULL,
    [UpdatedBy]                                  VARCHAR (30)    NULL,
    [UpdatedDate]                                DATETIME        NULL,
    [UpdatedFromIP]                              VARCHAR (15)    NULL,
    CONSTRAINT [PK_JobWorkTransformationContractChild2] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkTransformationContractChild2_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationContractChild2_JobWorkTransformationContractChildMaster] FOREIGN KEY ([JobWorkTransformationContractChildMasterId]) REFERENCES [dbo].[JobWorkTransformationContractChild] ([Id]),
    CONSTRAINT [FK_JobWorkTransformationContractChild2_OutputMaterialUOM] FOREIGN KEY ([OutputMaterialUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

