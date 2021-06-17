CREATE TABLE [dbo].[ESICMonthlyEmpWiseCalculation] (
    [ID]                         VARCHAR (20)    NOT NULL,
    [ESICEligibleEmpID]          VARCHAR (20)    NULL,
    [MonthNo]                    INT             NOT NULL,
    [YearNo]                     INT             NOT NULL,
    [EmployeeContributionAmount] NUMERIC (18, 2) NULL,
    [EmployerContributionAmount] NUMERIC (18, 2) NULL,
    [AddedBy]                    VARCHAR (30)    NOT NULL,
    [AddedDate]                  DATETIME        NOT NULL,
    [AddedFromIP]                VARCHAR (15)    NOT NULL,
    [UpdatedBy]                  VARCHAR (30)    NULL,
    [UpdatedDate]                DATETIME        NULL,
    [UpdatedFromIP]              VARCHAR (15)    NULL,
    CONSTRAINT [PK_ESICMonthlyEmpWiseCalculation] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ESICMonthlyEmpWiseCalculation_ESICEligibleEmployee] FOREIGN KEY ([ESICEligibleEmpID]) REFERENCES [dbo].[ESICEligibleEmployee] ([ID])
);

