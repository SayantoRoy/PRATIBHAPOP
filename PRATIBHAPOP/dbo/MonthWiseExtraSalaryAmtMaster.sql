CREATE TABLE [dbo].[MonthWiseExtraSalaryAmtMaster] (
    [SystemID]        VARCHAR (30)  NOT NULL,
    [EmpInfoSystemID] VARCHAR (30)  NOT NULL,
    [PlantID]         VARCHAR (10)  NOT NULL,
    [MonthNo]         VARCHAR (30)  NULL,
    [YearNo]          VARCHAR (30)  NULL,
    [IsDisbusted]     BIT           CONSTRAINT [DF_MonthWiseExtraSalaryAmtMaster_IsDisbusted] DEFAULT ((0)) NOT NULL,
    [AddedBy]         VARCHAR (100) NOT NULL,
    [DateAdded]       DATETIME      NOT NULL,
    [UpdatedBy]       VARCHAR (100) NULL,
    [DateUpdated]     DATETIME      NULL,
    CONSTRAINT [PK_MonthWiseExtraSalaryAmtMaster] PRIMARY KEY CLUSTERED ([SystemID] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_MonthWiseExtraSalaryAmtMaster_EmpInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_MonthWiseExtraSalaryAmtMaster_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

