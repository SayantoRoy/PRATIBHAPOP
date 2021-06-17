CREATE TABLE [dbo].[PFEmployeeApplied] (
    [ID]            VARCHAR (20) NOT NULL,
    [EmpSystemID]   VARCHAR (30) NULL,
    [PFMstID]       VARCHAR (20) NULL,
    [StartDate]     DATETIME     NOT NULL,
    [MaturityDate]  DATETIME     NOT NULL,
    [PFDtlID]       VARCHAR (20) NULL,
    [IsMandatory]   BIT          CONSTRAINT [DF_PFEmployeeApplied_IsMandatory] DEFAULT ((0)) NOT NULL,
    [IsEligible]    BIT          CONSTRAINT [DF_PFEmployeeApplied_IsEligible] DEFAULT ((0)) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_PFEmployeeApplied] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_PFEmployeeApplied_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_PFEmployeeApplied_PFPolicyDetails] FOREIGN KEY ([PFDtlID]) REFERENCES [dbo].[PFPolicyDetails] ([ID]),
    CONSTRAINT [FK_PFEmployeeApplied_PFPolicyMaster] FOREIGN KEY ([PFMstID]) REFERENCES [dbo].[PFPolicyMaster] ([ID])
);

