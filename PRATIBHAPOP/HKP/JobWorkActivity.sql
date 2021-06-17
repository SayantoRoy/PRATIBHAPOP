CREATE TABLE [HKP].[JobWorkActivity] (
    [Id]                  VARCHAR (50)    NOT NULL,
    [Code]                VARCHAR (50)    NULL,
    [Sequence]            DECIMAL (18, 2) NULL,
    [ShortName]           VARCHAR (150)   NULL,
    [StandardName]        VARCHAR (250)   NULL,
    [UserName]            VARCHAR (250)   NOT NULL,
    [Type]                VARCHAR (150)   NULL,
    [ResponsiblePersonId] VARCHAR (30)    NULL,
    [IsActive]            BIT             NULL,
    [Remarks]             VARCHAR (500)   NULL,
    [AddedBy]             VARCHAR (30)    NOT NULL,
    [AddedDate]           DATETIME        NOT NULL,
    [AddedFromIP]         VARCHAR (15)    NOT NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    CONSTRAINT [PK_JobWorkActivity] PRIMARY KEY CLUSTERED ([Id] ASC)
);

