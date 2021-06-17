CREATE TABLE [HKP].[PreRecruitmentConfiguration] (
    [Id]                                              VARCHAR (10) NOT NULL,
    [CompanyId]                                       VARCHAR (10) NOT NULL,
    [PlantId]                                         VARCHAR (10) NOT NULL,
    [EntityId]                                        VARCHAR (10) NOT NULL,
    [DocumentApprovedById]                            VARCHAR (30) NULL,
    [UpperDesignationAndSpecialAllowanceApprovedById] VARCHAR (30) NULL,
    [AddedBy]                                         VARCHAR (30) NOT NULL,
    [AddedDate]                                       DATETIME     NOT NULL,
    [AddedFromIP]                                     VARCHAR (15) NOT NULL,
    [UpdatedBy]                                       VARCHAR (30) NULL,
    [UpdatedDate]                                     DATETIME     NULL,
    [UpdatedFromIP]                                   VARCHAR (15) NULL,
    CONSTRAINT [PK_PreRecruitmentConfiguration] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PreRecruitmentConfiguration_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_PreRecruitmentConfiguration_EmployeeInformation] FOREIGN KEY ([DocumentApprovedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_PreRecruitmentConfiguration_EmployeeInformation1] FOREIGN KEY ([UpperDesignationAndSpecialAllowanceApprovedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_PreRecruitmentConfiguration_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_PreRecruitmentConfiguration_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

