CREATE TABLE [dbo].[ItemConsumtionChild] (
    [Id]                        VARCHAR (30)    NOT NULL,
    [ItemConsumtionMasterId]    VARCHAR (30)    NULL,
    [ItemConsumtionComponentId] VARCHAR (30)    NULL,
    [ParameterName]             VARCHAR (30)    NOT NULL,
    [Parameter]                 VARCHAR (30)    NOT NULL,
    [Actual]                    DECIMAL (18, 4) NOT NULL,
    [Allowance]                 DECIMAL (18, 4) NOT NULL,
    [WithAllowance]             DECIMAL (18, 4) NOT NULL,
    [Number]                    DECIMAL (18, 4) NOT NULL,
    [Total]                     DECIMAL (18, 4) NOT NULL,
    [AddedBy]                   VARCHAR (30)    NOT NULL,
    [AddedDate]                 DATETIME        NOT NULL,
    [AddedFromIP]               VARCHAR (15)    NOT NULL,
    [UpdatedBy]                 VARCHAR (30)    NULL,
    [UpdatedDate]               DATETIME        NULL,
    [UpdatedFromIP]             VARCHAR (15)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ItemConsumtionComponentId]) REFERENCES [dbo].[ItemConsumtionComponent] ([Id]),
    FOREIGN KEY ([ItemConsumtionMasterId]) REFERENCES [dbo].[ItemConsumtionMaster] ([Id])
);

