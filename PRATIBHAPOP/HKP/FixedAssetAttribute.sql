CREATE TABLE [HKP].[FixedAssetAttribute] (
    [Id]                VARCHAR (10)    NOT NULL,
    [Sequence]          DECIMAL (18, 2) NOT NULL,
    [Code]              VARCHAR (15)    NOT NULL,
    [ShortName]         VARCHAR (15)    NOT NULL,
    [StandardName]      VARCHAR (50)    NOT NULL,
    [UserName]          VARCHAR (50)    NOT NULL,
    [Description]       VARCHAR (250)   NULL,
    [Remarks]           VARCHAR (250)   NULL,
    [Active]            BIT             NOT NULL,
    [Archive]           BIT             CONSTRAINT [DF_FixedAssetAttribute_Archive] DEFAULT ((0)) NOT NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    [IsFreeField]       BIT             DEFAULT ((1)) NOT NULL,
    [IsPreDefinedField] BIT             DEFAULT ((1)) NOT NULL,
    [IsMandatory]       BIT             DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_FixedAssetAttribute] PRIMARY KEY CLUSTERED ([Id] ASC)
);

