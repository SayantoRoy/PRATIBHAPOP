CREATE TABLE [SCS].[Currency] (
    [Id]            VARCHAR (10)    NOT NULL,
    [Sequence]      DECIMAL (18, 2) NULL,
    [Code]          VARCHAR (10)    NOT NULL,
    [Name]          VARCHAR (50)    NOT NULL,
    [LargeUnit]     VARCHAR (10)    NOT NULL,
    [SmallUnit]     VARCHAR (10)    NULL,
    [InWordFormat]  VARCHAR (15)    NOT NULL,
    [Remarks]       VARCHAR (250)   NULL,
    [Description]   VARCHAR (250)   NULL,
    [Active]        BIT             NOT NULL,
    [Archive]       BIT             NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    [Precision]     VARCHAR (1)     NOT NULL,
    CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED ([Id] ASC)
);

