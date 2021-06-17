CREATE TABLE [MST].[ThirdPartyOperation] (
    [Id]            VARCHAR (10)    NOT NULL,
    [Code]          VARCHAR (15)    NOT NULL,
    [TMU]           DECIMAL (18, 2) NULL,
    [IsMachine]     BIT             NOT NULL,
    [Grouping]      VARCHAR (20)    NULL,
    [Description]   VARCHAR (250)   NULL,
    [Active]        BIT             NOT NULL,
    [Archive]       BIT             CONSTRAINT [DF_ThirdPartyCode_Archive] DEFAULT ((0)) NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_ThirdPartyCode] PRIMARY KEY CLUSTERED ([Id] ASC)
);

