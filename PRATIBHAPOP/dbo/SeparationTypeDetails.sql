CREATE TABLE [dbo].[SeparationTypeDetails] (
    [Id]               VARCHAR (30) NOT NULL,
    [SeparationTypeId] VARCHAR (10) NOT NULL,
    [YearNo]           VARCHAR (10) NOT NULL,
    [DayNo]            VARCHAR (15) NULL,
    [RoundUp]          BIT          DEFAULT ((0)) NOT NULL,
    [EmploymentType]   VARCHAR (30) NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_SeparationTypeDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SeparationTypeDetails_SeparationType] FOREIGN KEY ([SeparationTypeId]) REFERENCES [HKP].[SeparationType] ([Id])
);

