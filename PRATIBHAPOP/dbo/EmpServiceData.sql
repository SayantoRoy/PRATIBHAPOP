﻿CREATE TABLE [dbo].[EmpServiceData] (
    [Id]                        VARCHAR (20)    NOT NULL,
    [EmployeeId]                VARCHAR (30)    NOT NULL,
    [Date]                      DATETIME        NOT NULL,
    [Time]                      DATETIME        NOT NULL,
    [ShiftId]                   VARCHAR (30)    NULL,
    [EmployeeServiceCategoryId] VARCHAR (20)    NOT NULL,
    [From]                      DECIMAL (18, 2) NULL,
    [To]                        DECIMAL (18, 2) NULL,
    [Quantity]                  DECIMAL (18, 2) NULL,
    [Amount]                    DECIMAL (18, 2) NULL,
    [Particulars]               VARCHAR (50)    NULL,
    [BillOtherReferenceNo]      VARCHAR (30)    NULL,
    [AddedBy]                   VARCHAR (30)    NOT NULL,
    [AddedDate]                 DATETIME        NOT NULL,
    [AddedFromIP]               VARCHAR (15)    NOT NULL,
    [UpdatedBy]                 VARCHAR (30)    NULL,
    [UpdatedDate]               DATETIME        NULL,
    [UpdatedFromIP]             VARCHAR (15)    NULL,
    [IsProcessed]               BIT             DEFAULT ((0)) NOT NULL,
    [Chargeable]                BIT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_EmpServiceData] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmpServiceData_Category] FOREIGN KEY ([EmployeeServiceCategoryId]) REFERENCES [dbo].[EmpServiceCategory] ([Id]),
    CONSTRAINT [FK_EmpServiceData_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmpServiceData_Shift] FOREIGN KEY ([ShiftId]) REFERENCES [dbo].[ShiftDefination] ([SystemID])
);
