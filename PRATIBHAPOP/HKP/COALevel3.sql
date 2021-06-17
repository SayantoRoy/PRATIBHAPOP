CREATE TABLE [HKP].[COALevel3] (
    [Id]            VARCHAR (3)     NOT NULL,
    [Sequence]      DECIMAL (18, 2) NOT NULL,
    [Code]          VARCHAR (10)    NOT NULL,
    [ShortName]     VARCHAR (15)    NOT NULL,
    [StandardName]  VARCHAR (50)    NOT NULL,
    [UserName]      VARCHAR (50)    NOT NULL,
    [Description]   VARCHAR (250)   NULL,
    [Remarks]       VARCHAR (250)   NULL,
    [Active]        BIT             NOT NULL,
    [Archive]       BIT             NOT NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    CONSTRAINT [PK_COALevel3] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'IF Code:ACCIF06', @level0type = N'SCHEMA', @level0name = N'HKP', @level1type = N'TABLE', @level1name = N'COALevel3';

