CREATE TABLE [dbo].[TempDocDashboard] (
    [Id]                                      INT          IDENTITY (1, 1) NOT NULL,
    [DocumentCategoryId]                      VARCHAR (10) NOT NULL,
    [DocumentSubCategoryId]                   VARCHAR (10) NULL,
    [DocumentType]                            VARCHAR (30) NOT NULL,
    [ComplianceDocumentId]                    VARCHAR (10) NOT NULL,
    [DocumentationBy]                         VARCHAR (20) NOT NULL,
    [Importance]                              VARCHAR (30) NULL,
    [DueDate]                                 DATETIME     NULL,
    [ComplianceDocumentSetId]                 VARCHAR (10) NULL,
    [DocumentConfigurationDesignationGroupId] VARCHAR (10) NULL,
    [EmployeeId]                              VARCHAR (10) NULL,
    [Segment]                                 INT          NULL,
    [OptionalOrMandatory]                     VARCHAR (10) NULL,
    [CompanyGroupId]                          VARCHAR (10) NULL,
    [PreRecruitmentEmployeeId]                VARCHAR (10) NULL,
    [EmploymentStage]                         VARCHAR (30) NULL,
    [EmployeeTypeOrCategory]                  VARCHAR (20) NULL,
    CONSTRAINT [PK_DocDashboardTemp] PRIMARY KEY CLUSTERED ([Id] ASC)
);

