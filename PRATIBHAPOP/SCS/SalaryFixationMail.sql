CREATE TABLE [SCS].[SalaryFixationMail] (
    [Id]                       VARCHAR (10) NOT NULL,
    [PreReceuitmentEmployeeId] VARCHAR (10) NOT NULL,
    [PlantId]                  VARCHAR (10) NOT NULL,
    [IsMailSent]               BIT          DEFAULT ((0)) NOT NULL,
    [AddedBy]                  VARCHAR (30) NOT NULL,
    [AddedDate]                DATETIME     NOT NULL,
    [AddedFromIP]              VARCHAR (15) NOT NULL,
    [UpdatedBy]                VARCHAR (30) NULL,
    [UpdatedDate]              DATETIME     NULL,
    [UpdatedFromIP]            VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PreReceuitmentEmployeeId]) REFERENCES [dbo].[PreRecruitmentEmployee] ([Id]),
    CONSTRAINT [FK__SalaryFix__Plant__6636E38A] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

