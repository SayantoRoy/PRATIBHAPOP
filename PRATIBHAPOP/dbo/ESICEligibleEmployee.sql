CREATE TABLE [dbo].[ESICEligibleEmployee] (
    [ID]            VARCHAR (20) NOT NULL,
    [EmpSystemID]   VARCHAR (30) NULL,
    [ESICMstID]     VARCHAR (20) NULL,
    [ESICDtlID]     VARCHAR (20) NULL,
    [StartDate]     DATETIME     NULL,
    [EndDate]       DATETIME     NULL,
    [IsMaturity]    BIT          CONSTRAINT [DF_ESICEligibleEmployee_IsMaturity] DEFAULT ((1)) NOT NULL,
    [IsActive]      BIT          CONSTRAINT [DF_ESICEligibleEmployee_IsActive] DEFAULT ((1)) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_ESICEligibleEmployee] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ESICEligibleEmployee_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ESICEligibleEmployee_ESICPolicyDetails] FOREIGN KEY ([ESICDtlID]) REFERENCES [dbo].[ESICPolicyDetails] ([ID]),
    CONSTRAINT [FK_ESICEligibleEmployee_ESICPolicyMaster] FOREIGN KEY ([ESICMstID]) REFERENCES [dbo].[ESICPolicyMaster] ([ID])
);

