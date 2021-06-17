CREATE TABLE [HKP].[PFEmployeeApplied] (
    [Id]            VARCHAR (10) NOT NULL,
    [EmpSystemId]   VARCHAR (30) NOT NULL,
    [IsEligible]    BIT          CONSTRAINT [DF_PFEmployeeApplied_IsEligible] DEFAULT ((0)) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_PFEmployeeApplied] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PFEmployeeApplied_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

