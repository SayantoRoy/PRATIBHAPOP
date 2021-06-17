CREATE TABLE [dbo].[AttendanceGroup] (
    [Id]               VARCHAR (30)    NOT NULL,
    [Sequence]         DECIMAL (18, 2) NULL,
    [StandardName]     VARCHAR (30)    NOT NULL,
    [UserName]         VARCHAR (30)    NOT NULL,
    [Group1]           VARCHAR (30)    NOT NULL,
    [Group2]           VARCHAR (30)    NOT NULL,
    [Group3]           VARCHAR (30)    NOT NULL,
    [BudgetedManPower] VARCHAR (30)    NOT NULL,
    [AddedBy]          VARCHAR (30)    NULL,
    [AddedDate]        DATETIME        NULL,
    [UpdatedBy]        VARCHAR (30)    NULL,
    [UpdatedDate]      DATETIME        NULL,
    [AddedFromIP]      VARCHAR (15)    NULL,
    [UpdatedFromIP]    VARCHAR (15)    NULL,
    CONSTRAINT [PK_AttendanceGroup] PRIMARY KEY CLUSTERED ([Id] ASC)
);

