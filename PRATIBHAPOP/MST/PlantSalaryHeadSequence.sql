CREATE TABLE [MST].[PlantSalaryHeadSequence] (
    [Id]             VARCHAR (20) NOT NULL,
    [PlantId]        VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [SalaryHeadId]   VARCHAR (30) NOT NULL,
    [Sequence]       INT          NOT NULL,
    [HeadType]       VARCHAR (1)  NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_PlantSalaryHeadSequence] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PlantSalaryHeadSequence_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_PlantSalaryHeadSequence_SalaryHead] FOREIGN KEY ([SalaryHeadId]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

