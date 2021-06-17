CREATE TABLE [HKP].[QMSResponsiblePerson] (
    [Id]                  VARCHAR (10) NOT NULL,
    [QMSActivityMasterId] VARCHAR (10) NOT NULL,
    [PositionId]          VARCHAR (10) NULL,
    [AddedBy]             VARCHAR (30) NOT NULL,
    [AddedDate]           DATETIME     NOT NULL,
    [AddedFromIP]         VARCHAR (15) NOT NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    [EmployeeId]          VARCHAR (30) NULL,
    CONSTRAINT [PK_QMSResponsiblePerson] PRIMARY KEY CLUSTERED ([Id] ASC)
);

