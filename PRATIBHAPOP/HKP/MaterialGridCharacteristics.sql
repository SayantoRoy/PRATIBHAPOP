CREATE TABLE [HKP].[MaterialGridCharacteristics] (
    [Id]                VARCHAR (10) NOT NULL,
    [MaterialGridId]    VARCHAR (10) NOT NULL,
    [CharacteristicsId] VARCHAR (10) NOT NULL,
    [Sort]              INT          NOT NULL,
    [Active]            BIT          NOT NULL,
    [Archive]           BIT          NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_MaterialGridCharacteristics] PRIMARY KEY CLUSTERED ([Id] ASC)
);

