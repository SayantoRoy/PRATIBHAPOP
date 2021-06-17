CREATE TABLE [dbo].[SPIFormula] (
    [Id]            VARCHAR (50)    NOT NULL,
    [StitchCodeId]  VARCHAR (10)    NULL,
    [SPI]           INT             NULL,
    [IsFormula]     BIT             NULL,
    [FixedValue]    DECIMAL (18, 2) NULL,
    [Formula]       VARCHAR (100)   NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_SPIFormula] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SPIFormula_StitchCode] FOREIGN KEY ([StitchCodeId]) REFERENCES [HKP].[StitchCode] ([Id])
);

