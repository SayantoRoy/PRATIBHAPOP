CREATE TABLE [SCS].[CountryHSNCode] (
    [Id]            VARCHAR (10)  NOT NULL,
    [HSNCodeId]     VARCHAR (10)  NOT NULL,
    [CountryId]     VARCHAR (10)  NOT NULL,
    [Code]          VARCHAR (10)  NULL,
    [Description]   VARCHAR (100) NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    CONSTRAINT [PK_CountryHSNCode] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CountryHSNCode_Country] FOREIGN KEY ([CountryId]) REFERENCES [SCS].[Country] ([Id]),
    CONSTRAINT [FK_CountryHSNCode_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id])
);

