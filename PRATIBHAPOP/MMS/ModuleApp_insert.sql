﻿CREATE PROCEDURE [MMS].[ModuleApp_insert]
	@P_1 VarChar(2),
	@P_2 Decimal(18,2),
	@P_3 VarChar(15),
	@P_4 VarChar(15),
	@P_5 VarChar(100),
	@P_6 VarChar(100),
	@P_7 VarChar(20),
	@P_8 VarChar(250),
	@P_9 VarChar(250),
	@P_10 Bit,
	@P_11 Bit,
	@P_12 VarChar(30),
	@P_13 DateTime,
	@P_14 VarChar(15),
	@P_15 VarChar(30),
	@P_16 DateTime,
	@P_17 VarChar(15),
	@P_18 VarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [MMS].[ModuleApp_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [MMS].[ModuleApp]([Id], [Sequence], [Code], [ShortName], [StandardName], [UserName], [Image], [Description], [Remarks], [Active], [Archive], [AddedBy], [AddedDate], [AddedFromIP], [UpdatedBy], [UpdatedDate], [UpdatedFromIP], [ServiceUrl]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16, @P_17, @P_18);  SET @sync_row_count = @@rowcount;  END 
END