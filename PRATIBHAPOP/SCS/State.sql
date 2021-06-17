CREATE TABLE [SCS].[State] (
    [Id]              VARCHAR (10)    NOT NULL,
    [CountryId]       VARCHAR (10)    NOT NULL,
    [Sequence]        DECIMAL (18, 2) NOT NULL,
    [Code]            VARCHAR (15)    NOT NULL,
    [ShortName]       VARCHAR (15)    NOT NULL,
    [StandardName]    VARCHAR (50)    NOT NULL,
    [UserName]        VARCHAR (50)    NOT NULL,
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
    [IsNotApplicable] BIT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_State_Country] FOREIGN KEY ([CountryId]) REFERENCES [SCS].[Country] ([Id])
);

