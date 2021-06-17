CREATE TABLE [dbo].[NonEligibleOT] (
    [Id]            VARCHAR (30)  NOT NULL,
    [EmpSystemId]   VARCHAR (30)  NOT NULL,
    [EffectiveDate] DATE          NOT NULL,
    [Exclude]       BIT           NOT NULL,
    [AddedBy]       VARCHAR (100) NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (100) NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    CONSTRAINT [PK_NonEligibleOT] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_NonEligibleOT_EmpSystemId] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

