CREATE TABLE [HKP].[QualificationAndExprienceMatrix] (
    [Id]            VARCHAR (10)    NOT NULL,
    [Sequence]      DECIMAL (18, 2) NOT NULL,
    [Code]          VARCHAR (10)    NOT NULL,
    [ShortName]     VARCHAR (15)    NOT NULL,
    [Qualification] VARCHAR (500)   NULL,
    [Experience]    VARCHAR (500)   NULL,
    [Institution]   VARCHAR (250)   NULL,
    [Tier]          VARCHAR (200)   NULL,
    [Description]   VARCHAR (250)   NULL,
    [Remarks]       VARCHAR (250)   NULL,
    [Active]        BIT             NOT NULL,
    [Archive]       BIT             CONSTRAINT [DF_QualificationAndExprienceMatrix_ARCHIVE] DEFAULT ((0)) NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_QualificationAndExprienceMatrix] PRIMARY KEY CLUSTERED ([Id] ASC)
);

