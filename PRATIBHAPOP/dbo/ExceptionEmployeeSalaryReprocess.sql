CREATE TABLE [dbo].[ExceptionEmployeeSalaryReprocess] (
    [Id]            VARCHAR (30) NOT NULL,
    [EmpSystemId]   VARCHAR (30) NULL,
    [PlantId]       VARCHAR (10) NULL,
    [IsActive]      BIT          NOT NULL,
    [YearNo]        INT          NOT NULL,
    [MonthNo]       INT          NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

