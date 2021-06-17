CREATE TABLE [ORG].[CompanyGroupLine] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [LineId]         VARCHAR (10) NOT NULL,
    [Active]         BIT          NOT NULL,
    [Archive]        BIT          NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupLine] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupLine_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupLine_Line] FOREIGN KEY ([LineId]) REFERENCES [ORG].[Line] ([Id])
);

