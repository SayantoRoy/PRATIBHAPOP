CREATE TABLE [HKP].[ElementType] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [Code]          VARCHAR (10)  NOT NULL,
    [ShortName]     VARCHAR (15)  NOT NULL,
    [StandardName]  VARCHAR (50)  NOT NULL,
    [UserName]      VARCHAR (50)  NOT NULL,
    [Description]   VARCHAR (250) NOT NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

