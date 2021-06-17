CREATE TABLE [dbo].[BonusPolicyMonthlyRetainEligibleEmployee] (
    [ID]                   VARCHAR (20) NOT NULL,
    [EmpSystemID]          VARCHAR (30) NULL,
    [BnsPlcMthRetainID]    VARCHAR (20) NULL,
    [BonusPolicyDetailsID] VARCHAR (20) NULL,
    [StartDate]            DATETIME     NULL,
    [EndDate]              DATETIME     NULL,
    [IsActive]             BIT          CONSTRAINT [DF_BonusPolicyMonthlyRetainEligibleEmployee_IsActive] DEFAULT ((1)) NOT NULL,
    [IsMaturity]           BIT          CONSTRAINT [DF_BonusPolicyMonthlyRetainEligibleEmployee_IsMaturity] DEFAULT ((1)) NOT NULL,
    [IsApproved]           BIT          CONSTRAINT [DF_BonusPolicyMonthlyRetainEligibleEmployee_IsApproved] DEFAULT ((1)) NOT NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    [IsMandatory]          BIT          DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_BonusPolicyMonthlyRetainEligibleEmployee] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainEligibleEmployee_BonusPolicyMonthlyRetainDetails] FOREIGN KEY ([BonusPolicyDetailsID]) REFERENCES [dbo].[BonusPolicyMonthlyRetainDetails] ([ID]),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainEligibleEmployee_BonusPolicyMonthlyRetainMaster] FOREIGN KEY ([BnsPlcMthRetainID]) REFERENCES [dbo].[BonusPolicyMonthlyRetainMaster] ([ID]),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainEligibleEmployee_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

