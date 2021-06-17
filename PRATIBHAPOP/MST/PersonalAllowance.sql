CREATE TABLE [MST].[PersonalAllowance] (
    [Id]            VARCHAR (10) NOT NULL,
    [CompanyId]     VARCHAR (10) NOT NULL,
    [Code]          VARCHAR (10) NOT NULL,
    [ShortName]     VARCHAR (15) NOT NULL,
    [StandardName]  VARCHAR (50) NOT NULL,
    [UserName]      VARCHAR (50) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_PersonalAllowance] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PersonalAllowance_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id])
);

