CREATE TABLE [HKP].[MaterialGrid] (
    [Id]             VARCHAR (10)  NOT NULL,
    [GridNO]         VARCHAR (50)  NOT NULL,
    [Description]    VARCHAR (250) NULL,
    [CompanyGroupId] VARCHAR (10)  NULL,
    [Active]         BIT           NOT NULL,
    [Archive]        BIT           NOT NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_MaterialGrid] PRIMARY KEY CLUSTERED ([Id] ASC)
);

