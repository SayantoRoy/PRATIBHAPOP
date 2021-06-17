CREATE TABLE [MST].[RecruitmentProcessSet] (
    [Id]             VARCHAR (30)    NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [Sequence]       DECIMAL (18, 2) CONSTRAINT [DF__Recruitme__Seque__7385F1B0] DEFAULT ('1') NOT NULL,
    [Code]           VARCHAR (10)    NOT NULL,
    [ShortName]      VARCHAR (15)    CONSTRAINT [DF__Recruitme__Short__747A15E9] DEFAULT ('A') NOT NULL,
    [StandardName]   VARCHAR (50)    CONSTRAINT [DF__Recruitme__Stand__756E3A22] DEFAULT ('A') NOT NULL,
    [UserName]       VARCHAR (50)    NOT NULL,
    [Description]    VARCHAR (250)   CONSTRAINT [DF__Recruitme__Descr__76625E5B] DEFAULT ('A') NULL,
    [Remarks]        VARCHAR (250)   NULL,
    [Active]         BIT             NOT NULL,
    [Archive]        BIT             NOT NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_RecruitmentProcessSet] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RecruitmentProcessSet_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

