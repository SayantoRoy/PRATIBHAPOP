CREATE TABLE [HKP].[TermsAndConditions] (
    [Id]            VARCHAR (20)    NOT NULL,
    [Sequence]      DECIMAL (18, 2) NOT NULL,
    [Code]          VARCHAR (10)    NOT NULL,
    [ShortName]     VARCHAR (15)    NOT NULL,
    [StandardName]  VARCHAR (50)    NOT NULL,
    [UserName]      VARCHAR (50)    NOT NULL,
    [Description]   VARCHAR (250)   NULL,
    [Remarks]       VARCHAR (250)   NULL,
    [Active]        BIT             NOT NULL,
    [Mandatory]     BIT             NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    [Type]          VARCHAR (30)    NULL,
    CONSTRAINT [PK_TermsAndConditions] PRIMARY KEY CLUSTERED ([Id] ASC)
);

