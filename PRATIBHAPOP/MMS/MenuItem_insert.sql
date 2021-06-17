CREATE PROCEDURE [MMS].[MenuItem_insert]
	@P_1 VarChar(10),
	@P_2 VarChar(10),
	@P_3 VarChar(30),
	@P_4 Decimal(18,2),
	@P_5 VarChar(20),
	@P_6 VarChar(20),
	@P_7 VarChar(50),
	@P_8 VarChar(50),
	@P_9 VarChar(50),
	@P_10 VarChar(150),
	@P_11 Int,
	@P_12 Int,
	@P_13 VarChar(20),
	@P_14 VarChar(250),
	@P_15 VarChar(250),
	@P_16 Bit,
	@P_17 Bit,
	@P_18 VarChar(30),
	@P_19 DateTime,
	@P_20 VarChar(15),
	@P_21 VarChar(30),
	@P_22 DateTime,
	@P_23 VarChar(15),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [MMS].[MenuItem_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [MMS].[MenuItem]([Id], [MenuId], [MenuItemGroup], [Sequence], [Code], [UserCode], [InterfaceNo], [StandardName], [UserName], [TooltipName], [MaximumUser], [MaximumInactiveTime], [Image], [Description], [Remarks], [Active], [Archive], [AddedBy], [AddedDate], [AddedFromIP], [UpdatedBy], [UpdatedDate], [UpdatedFromIP]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16, @P_17, @P_18, @P_19, @P_20, @P_21, @P_22, @P_23);  SET @sync_row_count = @@rowcount;  END 
END
