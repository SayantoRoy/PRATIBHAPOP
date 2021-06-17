CREATE TABLE [HKP].[GLAccountType] (
    [Id]              VARCHAR (10) NOT NULL,
    [GLGeneralInfoId] VARCHAR (10) NOT NULL,
    [AccountType]     VARCHAR (10) NOT NULL,
    [Active]          BIT          NOT NULL,
    [Archive]         BIT          NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (15) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_GLAccountType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_GLAccountType_GLGeneralInfo] FOREIGN KEY ([GLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id])
);

