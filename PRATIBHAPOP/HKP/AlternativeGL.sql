CREATE TABLE [HKP].[AlternativeGL] (
    [Id]               VARCHAR (10)    NOT NULL,
    [AlternativeCOAId] VARCHAR (10)    NOT NULL,
    [AccountCode]      VARCHAR (10)    NULL,
    [Sequence]         DECIMAL (18, 2) NOT NULL,
    [UserName]         VARCHAR (50)    NULL,
    [Description]      VARCHAR (250)   NULL,
    [Active]           BIT             NOT NULL,
    [Archive]          BIT             NOT NULL,
    [AddedBy]          VARCHAR (30)    NOT NULL,
    [AddedDate]        DATETIME        NOT NULL,
    [AddedFromIP]      VARCHAR (15)    NOT NULL,
    [UpdatedBy]        VARCHAR (30)    NULL,
    [UpdatedDate]      DATETIME        NULL,
    [UpdatedFromIP]    VARCHAR (15)    NULL,
    CONSTRAINT [PK_AlternativeGL] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AlternativeGL_AlternativeCOA] FOREIGN KEY ([AlternativeCOAId]) REFERENCES [HKP].[AlternativeCOA] ([Id])
);

