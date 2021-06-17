CREATE TABLE [dbo].[Signature] (
    [Field]      VARCHAR (50)    NOT NULL,
    [Dates]      DATETIME        NOT NULL,
    [LastNumber] DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_Signature] PRIMARY KEY CLUSTERED ([Field] ASC, [Dates] ASC)
);

