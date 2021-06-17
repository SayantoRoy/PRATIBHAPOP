CREATE TABLE [TRN].[SubsectionStructureDetail] (
    [Id]                          VARCHAR (30) NOT NULL,
    [SubsectionStructureMasterId] VARCHAR (30) NULL,
    [DivisionId]                  VARCHAR (10) NULL,
    [DepartmentId]                VARCHAR (10) NULL,
    [SectionId]                   VARCHAR (10) NULL,
    [SubsectionId]                VARCHAR (10) NULL,
    [LineId]                      VARCHAR (10) NULL,
    [Archive]                     BIT          NULL,
    [AddedBy]                     VARCHAR (30) NOT NULL,
    [AddedDate]                   DATETIME     NOT NULL,
    [AddedFromIP]                 VARCHAR (15) NOT NULL,
    [UpdatedBy]                   VARCHAR (30) NULL,
    [UpdatedDate]                 DATETIME     NULL,
    [UpdatedFromIP]               VARCHAR (15) NULL,
    CONSTRAINT [PK_SubsectionStructureDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SubsectionStructureDetail_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [ORG].[Department] ([Id]),
    CONSTRAINT [FK_SubsectionStructureDetail_Division] FOREIGN KEY ([DivisionId]) REFERENCES [ORG].[Division] ([Id]),
    CONSTRAINT [FK_SubsectionStructureDetail_Line] FOREIGN KEY ([LineId]) REFERENCES [ORG].[Line] ([Id]),
    CONSTRAINT [FK_SubsectionStructureDetail_Section] FOREIGN KEY ([SectionId]) REFERENCES [ORG].[Section] ([Id]),
    CONSTRAINT [FK_SubsectionStructureDetail_SubSection] FOREIGN KEY ([SubsectionId]) REFERENCES [ORG].[SubSection] ([Id]),
    CONSTRAINT [FK_SubsectionStructureDetail_SubsectionStructureDetail] FOREIGN KEY ([SubsectionStructureMasterId]) REFERENCES [TRN].[SubsectionStructureMaster] ([Id])
);

