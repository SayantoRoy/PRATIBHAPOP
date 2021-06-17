CREATE TABLE [MST].[RecipeMaterialGroupingMaster] (
    [Id]            VARCHAR (30)    NOT NULL,
    [Sequence]      DECIMAL (18, 2) NOT NULL,
    [Code]          VARCHAR (10)    NOT NULL,
    [ShortName]     VARCHAR (15)    NOT NULL,
    [StandardName]  VARCHAR (50)    NOT NULL,
    [UserName]      VARCHAR (50)    NOT NULL,
    [QtyValue]      DECIMAL (18, 2) NULL,
    [UomId]         VARCHAR (10)    NULL,
    [Active]        BIT             NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_RecipeMaterialGroupingMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__RecipeMaterialGroupingMaster__UomId] FOREIGN KEY ([UomId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

