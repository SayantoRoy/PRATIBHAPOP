CREATE TABLE [dbo].[EmployeeWiseFixedOTSetting] (
    [Id]              VARCHAR (10) NOT NULL,
    [CompanyId]       VARCHAR (10) NULL,
    [PlantId]         VARCHAR (10) NULL,
    [EmpSystemId]     VARCHAR (30) NULL,
    [MinimumOT]       INT          NOT NULL,
    [IsExcessAllowed] BIT          NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

