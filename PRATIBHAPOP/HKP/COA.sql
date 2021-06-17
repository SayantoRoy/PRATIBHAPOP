CREATE TABLE [HKP].[COA] (
    [Id]               VARCHAR (10)  NOT NULL,
    [Code]             VARCHAR (10)  NOT NULL,
    [UserName]         VARCHAR (50)  NOT NULL,
    [LengthOfGL]       INT           NULL,
    [Description]      VARCHAR (250) NULL,
    [IsLevelMandatory] BIT           NULL,
    [Active]           BIT           NOT NULL,
    [Archive]          BIT           NOT NULL,
    [AddedBy]          VARCHAR (30)  NOT NULL,
    [AddedDate]        DATETIME      NOT NULL,
    [AddedFromIP]      VARCHAR (15)  NOT NULL,
    [UpdatedBy]        VARCHAR (30)  NULL,
    [UpdatedDate]      DATETIME      NULL,
    [UpdatedFromIP]    VARCHAR (15)  NULL,
    CONSTRAINT [PK_COA] PRIMARY KEY CLUSTERED ([Id] ASC)
);

