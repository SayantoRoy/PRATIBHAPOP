CREATE TABLE [MST].[RecruitmentProcessSetDetail] (
    [Id]                      VARCHAR (10) NOT NULL,
    [RecruitmentProcessSetId] VARCHAR (30) NOT NULL,
    [RecruitmentProcessId]    VARCHAR (10) NOT NULL,
    [Sequence]                TINYINT      NOT NULL,
    [RequiredDays]            TINYINT      NOT NULL,
    [Active]                  BIT          NOT NULL,
    [Archive]                 BIT          NOT NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [AddedDate]               DATETIME     NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    CONSTRAINT [PK_RecruitmentProcessSetDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RecruitmentProcessSetDetail_RecruitmentProcess] FOREIGN KEY ([RecruitmentProcessId]) REFERENCES [HKP].[RecruitmentProcess] ([Id]),
    CONSTRAINT [FK_RecruitmentProcessSetDetail_RecruitmentProcessSet] FOREIGN KEY ([RecruitmentProcessSetId]) REFERENCES [MST].[RecruitmentProcessSet] ([Id])
);

