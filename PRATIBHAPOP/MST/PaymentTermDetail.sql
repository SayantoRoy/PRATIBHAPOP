CREATE TABLE [MST].[PaymentTermDetail] (
    [Id]            VARCHAR (10)    NOT NULL,
    [PaymentTermId] VARCHAR (10)    NOT NULL,
    [Sequence]      DECIMAL (18, 2) NULL,
    [Percentage]    DECIMAL (18, 4) NULL,
    [NoOfDay]       INT             NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_PaymentTermDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PaymentTermDetail_PaymentTerm] FOREIGN KEY ([PaymentTermId]) REFERENCES [MST].[PaymentTerm] ([Id])
);

