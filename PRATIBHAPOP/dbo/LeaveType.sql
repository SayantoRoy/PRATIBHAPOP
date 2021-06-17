CREATE TABLE [dbo].[LeaveType] (
    [Id]             VARCHAR (10)    NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [LeaveType]      VARCHAR (50)    NULL,
    [Sequence]       DECIMAL (18, 2) NULL,
    [Code]           VARCHAR (10)    NOT NULL,
    [ShortName]      VARCHAR (15)    NULL,
    [StandardName]   VARCHAR (50)    NULL,
    [UserName]       VARCHAR (50)    NOT NULL,
    [Description]    VARCHAR (250)   NULL,
    [Remarks]        VARCHAR (250)   NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    [IsESIC]         BIT             CONSTRAINT [DF_LeaveType_IsESIC] DEFAULT ((0)) NOT NULL,
    [IsGeneral]      BIT             CONSTRAINT [DF_LeaveType_IsGeneral] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_LeaveType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LeaveType_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

