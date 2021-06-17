CREATE TABLE [dbo].[JobWorkValueAddedContractChild2] (
    [Id]                                     VARCHAR (50)    NOT NULL,
    [JobWorkValueAddedContractChildMasterId] VARCHAR (50)    NOT NULL,
    [OrderType]                              VARCHAR (50)    NOT NULL,
    [MasterOrderNoId]                        VARCHAR (10)    NOT NULL,
    [MasterOrderItemId]                      VARCHAR (10)    NOT NULL,
    [ParticularSpecification]                VARCHAR (50)    NOT NULL,
    [OutputMaterialUOMId]                    VARCHAR (10)    NOT NULL,
    [Quantity]                               DECIMAL (18, 2) NOT NULL,
    [Remarks]                                VARCHAR (250)   NULL,
    [AddedBy]                                VARCHAR (30)    NOT NULL,
    [AddedDate]                              DATETIME        NOT NULL,
    [AddedFromIP]                            VARCHAR (15)    NOT NULL,
    [UpdatedBy]                              VARCHAR (30)    NULL,
    [UpdatedDate]                            DATETIME        NULL,
    [UpdatedFromIP]                          VARCHAR (15)    NULL,
    [CustomerId]                             VARCHAR (10)    NOT NULL,
    [PlanQuantity]                           DECIMAL (18, 2) NOT NULL,
    CONSTRAINT [PK_JobWorkValueAddedContractChild2] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkValueAddedContractChild2_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedContractChild2_JobWorkValueAddedContractChildMaster] FOREIGN KEY ([JobWorkValueAddedContractChildMasterId]) REFERENCES [dbo].[JobWorkValueAddedContractChild] ([Id]),
    CONSTRAINT [FK_JobWorkValueAddedContractChild2_OutputMaterialUOM] FOREIGN KEY ([OutputMaterialUOMId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

