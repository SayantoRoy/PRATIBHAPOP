CREATE TABLE [dbo].[SeparationTypeFixedDayAmount] (
    [Id]               VARCHAR (30) NOT NULL,
    [SeparationTypeId] VARCHAR (10) NOT NULL,
    [DayNo]            VARCHAR (15) NULL,
    [EmploymentType]   VARCHAR (30) NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_SeparationTypeFixedDayAmount] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SeparationTypeFixedDayAmount_SeparationType] FOREIGN KEY ([SeparationTypeId]) REFERENCES [HKP].[SeparationType] ([Id])
);

