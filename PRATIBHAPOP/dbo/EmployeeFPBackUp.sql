CREATE TABLE [dbo].[EmployeeFPBackUp] (
    [Id]            VARCHAR (30)   NOT NULL,
    [EmpSystemId]   VARCHAR (30)   NOT NULL,
    [FPId]          VARCHAR (50)   NULL,
    [FPTemplate]    NVARCHAR (MAX) NULL,
    [FPImage]       IMAGE          NULL,
    [IsLeft]        BIT            NULL,
    [FingerName]    VARCHAR (50)   NULL,
    [AddedBy]       VARCHAR (30)   NOT NULL,
    [AddedDate]     DATETIME       NOT NULL,
    [AddedFromIP]   VARCHAR (15)   NOT NULL,
    [UpdatedBy]     VARCHAR (30)   NULL,
    [UpdatedDate]   DATETIME       NULL,
    [UpdatedFromIP] VARCHAR (15)   NULL,
    [DeletedBy]     VARCHAR (30)   NULL,
    [DeletedDate]   DATETIME       NULL,
    CONSTRAINT [PK_EmployeeFPBackUp] PRIMARY KEY CLUSTERED ([Id] ASC)
);

