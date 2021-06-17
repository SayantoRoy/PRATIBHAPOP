CREATE TABLE [MST].[PaymentTerm] (
    [Id]            VARCHAR (10)  NOT NULL,
    [Code]          VARCHAR (10)  NOT NULL,
    [BaseLineDate]  VARCHAR (25)  NOT NULL,
    [UserName]      VARCHAR (50)  NOT NULL,
    [IsCustomer]    BIT           NULL,
    [IsVendor]      BIT           NOT NULL,
    [IsEmployee]    BIT           NULL,
    [Description]   VARCHAR (250) NULL,
    [Remarks]       VARCHAR (250) NULL,
    [Active]        BIT           NOT NULL,
    [Archive]       BIT           NOT NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    [PaymentMode]   VARCHAR (30)  NULL,
    CONSTRAINT [PK_PaymentTerm] PRIMARY KEY CLUSTERED ([Id] ASC)
);

