CREATE TABLE [MST].[CropProcessMonthDetails] (
    [Id]        VARCHAR (20)    NOT NULL,
    [MonthNo]   DECIMAL (18, 2) NOT NULL,
    [MonthName] VARCHAR (20)    NOT NULL,
    CONSTRAINT [PK_CropProcessMonthDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

