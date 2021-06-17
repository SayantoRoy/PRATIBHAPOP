CREATE TABLE [dbo].[SalaryHead] (
    [SalaryHeadID]     VARCHAR (30)  NOT NULL,
    [SalaryHead]       VARCHAR (50)  NULL,
    [Description]      VARCHAR (150) NULL,
    [HeadType]         VARCHAR (5)   NULL,
    [HeadCategory]     VARCHAR (50)  NULL,
    [ExtDataUpload]    BIT           NOT NULL,
    [GroupID]          VARCHAR (10)  NULL,
    [AddedBy]          VARCHAR (100) NOT NULL,
    [DateAdded]        DATETIME      NOT NULL,
    [UpdatedBy]        VARCHAR (100) NULL,
    [DateUpdated]      DATETIME      NULL,
    [IsCTCComponent]   BIT           CONSTRAINT [DF_SalaryHead_IsCTCComponent] DEFAULT ((0)) NOT NULL,
    [IsGrossComponent] BIT           CONSTRAINT [DF_SalaryHead_IsGrossComponent] DEFAULT ((0)) NOT NULL,
    [Sequence]         INT           DEFAULT ((0)) NOT NULL,
    [PartOfNetPay]     BIT           DEFAULT ((0)) NOT NULL,
    [ShortName]        VARCHAR (30)  NULL,
    [StandardName]     VARCHAR (100) NULL,
    [IsRetained]       BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SalaryHead] PRIMARY KEY CLUSTERED ([SalaryHeadID] ASC),
    CONSTRAINT [FK_SalaryHead_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

