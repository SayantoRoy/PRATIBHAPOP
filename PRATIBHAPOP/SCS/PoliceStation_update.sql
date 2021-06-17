CREATE PROCEDURE [SCS].[PoliceStation_update]
	@P_1 VarChar(10),
	@P_2 VarChar(10),
	@P_3 Decimal(18,2),
	@P_4 VarChar(10),
	@P_5 VarChar(15),
	@P_6 VarChar(50),
	@P_7 VarChar(50),
	@P_8 VarChar(250),
	@P_9 VarChar(250),
	@P_10 VarChar(30),
	@P_11 DateTime,
	@P_12 VarChar(15),
	@P_13 VarChar(30),
	@P_14 DateTime,
	@P_15 VarChar(15),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [SCS].[PoliceStation] SET [DistrictId] = @P_2, [Sequence] = @P_3, [Code] = @P_4, [ShortName] = @P_5, [StandardName] = @P_6, [UserName] = @P_7, [Description] = @P_8, [Remarks] = @P_9, [AddedBy] = @P_10, [AddedDate] = @P_11, [AddedFromIP] = @P_12, [UpdatedBy] = @P_13, [UpdatedDate] = @P_14, [UpdatedFromIP] = @P_15 FROM [SCS].[PoliceStation] [base] JOIN [SCS].[PoliceStation_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
