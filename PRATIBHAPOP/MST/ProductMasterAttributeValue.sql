CREATE TABLE [MST].[ProductMasterAttributeValue] (
    [Id]                             VARCHAR (10) NOT NULL,
    [ProductMasterId]                VARCHAR (10) NOT NULL,
    [MaterialAttributeId]            VARCHAR (10) NOT NULL,
    [MaterialAttributeValueId]       VARCHAR (10) NULL,
    [MaterialAttributeValueFreeText] VARCHAR (50) NULL,
    [Active]                         BIT          NOT NULL,
    [Archive]                        BIT          NOT NULL,
    [AddedBy]                        VARCHAR (30) NOT NULL,
    [AddedDate]                      DATETIME     NOT NULL,
    [AddedFromIP]                    VARCHAR (15) NOT NULL,
    [UpdatedBy]                      VARCHAR (30) NULL,
    [UpdatedDate]                    DATETIME     NULL,
    [UpdatedFromIP]                  VARCHAR (15) NULL,
    CONSTRAINT [PK_ProductMasterAttributeValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductMasterAttributeValue_MaterialAttribute] FOREIGN KEY ([MaterialAttributeId]) REFERENCES [HKP].[MaterialAttribute] ([Id]),
    CONSTRAINT [FK_ProductMasterAttributeValue_MaterialAttributeValue] FOREIGN KEY ([MaterialAttributeValueId]) REFERENCES [HKP].[MaterialAttributeValue] ([Id]),
    CONSTRAINT [FK_ProductMasterAttributeValue_ProductMaster] FOREIGN KEY ([ProductMasterId]) REFERENCES [MST].[ProductMaster] ([Id])
);

