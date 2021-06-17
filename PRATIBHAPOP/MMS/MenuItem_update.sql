CREATE PROCEDURE [MMS].[MenuItem_update]
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
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [MMS].[MenuItem] SET [MenuId] = @P_2, [MenuItemGroup] = @P_3, [Sequence] = @P_4, [Code] = @P_5, [UserCode] = @P_6, [InterfaceNo] = @P_7, [StandardName] = @P_8, [UserName] = @P_9, [TooltipName] = @P_10, [MaximumUser] = @P_11, [MaximumInactiveTime] = @P_12, [Image] = @P_13, [Description] = @P_14, [Remarks] = @P_15, [Active] = @P_16, [Archive] = @P_17, [AddedBy] = @P_18, [AddedDate] = @P_19, [AddedFromIP] = @P_20, [UpdatedBy] = @P_21, [UpdatedDate] = @P_22, [UpdatedFromIP] = @P_23 FROM [MMS].[MenuItem] [base] JOIN [MMS].[MenuItem_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
