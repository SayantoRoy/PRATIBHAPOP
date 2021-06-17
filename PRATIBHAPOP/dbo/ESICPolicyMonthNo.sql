CREATE TABLE [dbo].[ESICPolicyMonthNo] (
    [ESICPolicyMasterID] VARCHAR (20) NOT NULL,
    [MonthNo]            VARCHAR (30) NOT NULL,
    [MonthName]          VARCHAR (30) NOT NULL,
    CONSTRAINT [PK_ESICPolicyMonthNo] PRIMARY KEY CLUSTERED ([ESICPolicyMasterID] ASC, [MonthNo] ASC)
);

