CREATE TABLE [dbo].[TaxGroup] (
    [SystemID]     VARCHAR (30)  NOT NULL,
    [TaxGroupName] VARCHAR (50)  NULL,
    [Description]  VARCHAR (200) NULL,
    [DefaultGroup] BIT           CONSTRAINT [DF_TaxGroup_DefaultGroup] DEFAULT ((0)) NOT NULL,
    [GroupID]      VARCHAR (10)  NULL,
    [AddedBy]      VARCHAR (100) NOT NULL,
    [DateAdded]    DATETIME      NOT NULL,
    [UpdatedBy]    VARCHAR (100) NULL,
    [DateUpdated]  DATETIME      NULL,
    CONSTRAINT [PK_TaxGroup] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_TaxGroup_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

