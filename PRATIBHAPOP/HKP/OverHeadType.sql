CREATE TABLE [HKP].[OverHeadType] (
    [Id]            VARCHAR (10)    NOT NULL,
    [Sequence]      DECIMAL (18, 2) NULL,
    [Code]          VARCHAR (10)    NULL,
    [ShortName]     VARCHAR (15)    NULL,
    [StandardName]  VARCHAR (50)    NULL,
    [UserName]      VARCHAR (50)    NULL,
    [Description]   VARCHAR (250)   NULL,
    [Remarks]       VARCHAR (250)   NULL,
    [Active]        BIT             DEFAULT ((0)) NOT NULL,
    [Type]          VARCHAR (20)    NULL,
    [AddedBy]       VARCHAR (30)    NULL,
    [AddedDate]     DATETIME        NULL,
    [AddedFromIP]   VARCHAR (15)    NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

