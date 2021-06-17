CREATE TABLE [db_owner].[DailyAllowanceRate] (
    [Id]                 VARCHAR (30)    NOT NULL,
    [PlantID]            VARCHAR (10)    NOT NULL,
    [EmployeeCategoryId] VARCHAR (10)    NOT NULL,
    [DailyAllowanceId]   VARCHAR (30)    NOT NULL,
    [Rate]               DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [Active]             BIT             NOT NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    CONSTRAINT [PK_DailyAllowanceRate] PRIMARY KEY CLUSTERED ([Id] ASC)
);

