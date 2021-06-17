CREATE TABLE [HKP].[EmployeeDisciplinaryAction] (
    [Id]                           VARCHAR (10)  NOT NULL,
    [EmpSystemId]                  VARCHAR (10)  NOT NULL,
    [DisciplinaryActionCategoryId] VARCHAR (10)  NOT NULL,
    [Description]                  VARCHAR (250) NULL,
    [EntryDate]                    DATETIME      NULL,
    [AddedBy]                      VARCHAR (30)  NOT NULL,
    [AddedDate]                    DATETIME      NOT NULL,
    [AddedFromIP]                  VARCHAR (15)  NOT NULL,
    [UpdatedBy]                    VARCHAR (30)  NULL,
    [UpdatedDate]                  DATETIME      NULL,
    [UpdatedFromIP]                VARCHAR (15)  NULL,
    [ActionType]                   VARCHAR (30)  NULL,
    [IsDACompleted]                BIT           DEFAULT ((0)) NOT NULL,
    [DACompeletedBy]               VARCHAR (30)  NULL,
    [DACompeletionDate]            DATETIME      NULL,
    [DACompeletionRemark]          VARCHAR (300) NULL,
    CONSTRAINT [PK_EmployeeDisciplinaryAction] PRIMARY KEY CLUSTERED ([Id] ASC)
);

