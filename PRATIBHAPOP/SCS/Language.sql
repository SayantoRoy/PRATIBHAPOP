CREATE TABLE [SCS].[Language] (
    [Id]              VARCHAR (5)     NOT NULL,
    [CountryId]       VARCHAR (10)    NULL,
    [Sequence]        DECIMAL (18, 2) NOT NULL,
    [Code]            VARCHAR (10)    NOT NULL,
    [ShortName]       VARCHAR (15)    NULL,
    [StandardName]    VARCHAR (50)    NULL,
    [CultureInfoCode] VARCHAR (10)    NULL,
    [UserName]        VARCHAR (30)    NOT NULL,
    [Description]     VARCHAR (250)   NULL,
    [Remarks]         VARCHAR (250)   NULL,
    [Active]          BIT             NOT NULL,
    [Archive]         BIT             NOT NULL,
    [AddedBy]         VARCHAR (30)    NOT NULL,
    [AddedDate]       DATETIME        NOT NULL,
    [AddedFromIP]     VARCHAR (15)    NOT NULL,
    [UpdatedBy]       VARCHAR (30)    NULL,
    [UpdatedDate]     DATETIME        NULL,
    [UpdatedFromIP]   VARCHAR (15)    NULL,
    CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Language_Country] FOREIGN KEY ([CountryId]) REFERENCES [SCS].[Country] ([Id])
);

