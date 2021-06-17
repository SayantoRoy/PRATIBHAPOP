﻿CREATE TABLE [HKP].[ValueAddedCategory] (
    [Id]            VARCHAR (10)    NOT NULL,
    [Sequence]      DECIMAL (18, 2) NOT NULL,
    [Code]          VARCHAR (10)    NULL,
    [ValueAdded]    VARCHAR (150)   NULL,
    [NonValueAdded] VARCHAR (150)   NULL,
    [Necessary]     VARCHAR (150)   NULL,
    [Description]   VARCHAR (250)   NULL,
    [Remarks]       VARCHAR (250)   NULL,
    [Active]        BIT             NOT NULL,
    [Archive]       BIT             NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_aplos.ValueAddedCategories] PRIMARY KEY CLUSTERED ([Id] ASC)
);
